/**
 * Global Grunt Tasks
 * ==================
 * Autor: Christoph Hermann
 */
module.exports = function(grunt) {

    // Project configuration.
    grunt.initConfig({
        markdownpdf: {
            options: {},
            files: {
                src: "*.md",
                dest: "*.pdf"
            }
        }
    });

    // Load the plugin that provides the "uglify" task.
    grunt.loadNpmTasks('markdownpdf');
};
