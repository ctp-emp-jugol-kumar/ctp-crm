<template>
    <ckeditor :editor="editor" :config="editorConfig"></ckeditor>
</template>

<script setup>
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
const editor = ClassicEditor
const editorConfig = {
    toolbar: {
        items: [
            'bold',
            'italic',
            'link',
            'undo',
            'redo'
        ]
    },
    ckfinder: {
        // Upload the images to the server using the CKFinder QuickUpload command.
        uploadUrl: '/laravel-filemanager/upload?type=Images'
    }
}
</script>
