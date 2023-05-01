<template>
    <div>
        <div ref="chart"></div>
    </div>
</template>

<script setup>
    import { onMounted, ref } from 'vue';
    import ApexCharts from 'apexcharts';
    import {useJson} from "../composables/useJson";
    const jsonData = useJson()


    const props = defineProps({
        progress:{
            type:Number,
            default:0
        },
        height:{
            type:Number,
            default:300,
        },
        status:{
            type:String,
            default:"Progress",
        }
    })


    let color = null;
    switch (props.status){
        case "New Project":
            color = '#ac66fc';
            break
        case "Development":
            color = '#fca766';
            break
        case "In Process":
            color = '#9afc66';
            break
        case "Testing":
            color = '#66fcef';
            break
        case "Revision":
            color = '#fc66c5';
            break
        case "Complete":
            color = '#70fc66';
            break
        case "Canceled":
            color = '#f51919';
            break
        default:
            color = "#66fcbb"
    }



    const chart = ref(null);
    onMounted(() => {
            const options = {
                chart: {
                    height: props.height,
                    type: 'radialBar',
                },
                fill: {
                    type: 'gradient',
                    gradient: {
                        shade: 'blue',
                        type: 'vertical',
                        shadeIntensity: 0.5,
                        inverseColors: false,
                        opacityFrom: 1,
                        opacityTo: 1,
                        stops: [0, 100]
                    },
                    colors:[props.status === 'Progress' ? jsonData.color(props.progress) : color]
                },
                series: [props.progress],
                plotOptions: {
                    radialBar: {
                        hollow: {
                            margin: 15,
                            size: '70%',
                            background: '#fff',
                            image: undefined,
                        },
                        dataLabels: {
                            showOn: 'always',
                            name: {
                                offsetY: -10,
                                show: true,
                                color: '#888',
                                fontSize: '17px',
                            },
                            value: {
                                formatter: (val) => {
                                    return val + '%';
                                },
                                color: '#111',
                                fontSize: '36px',
                                show: true,
                            },
                        },
                    },
                },
                stroke: {
                    lineCap: 'round',
                },
                labels: [props.status],
            };


            var optionsCircle1 = {
                chart: {
                    type: 'radialBar',
                    height: 266,
                    zoom: {
                        enabled: false
                    },
                    offsetY: 20
                },
                colors: ['#E91E63'],
                plotOptions: {
                    radialBar: {
                        dataLabels: {
                            name: {
                                show: false
                            },
                            value: {
                                offsetY: 0
                            }
                        }
                    }
                },
                series: [65],
                theme: {
                    monochrome: {
                        enabled: false
                    }
                },
                legend: {
                    show: false
                },
                title: {
                    text: 'Bounce Rate',
                    align: 'left'
                }
            }


            const chartInstance = new ApexCharts(chart.value, options);
            chartInstance.render();
        });

</script>
