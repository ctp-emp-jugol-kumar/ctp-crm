<template>
    <div>
        <div ref="chart"></div>
    </div>
</template>

<script setup>
    import { onMounted, ref } from 'vue';
    import ApexCharts from 'apexcharts';

    const props = defineProps({
        progress:{
            type:Number,
            default:0
        },
        height:{
            type:Number,
            default:300,
        }
    })
    let color = null;
    if (props.progress < 10){
        color = "#66fc66";
    }else if(props.progress < 20){
        color = "#9b66fc"
    }else{
        color = "#fc6684"
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
                    colors:[color]
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
                labels: ['Progress'],
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
