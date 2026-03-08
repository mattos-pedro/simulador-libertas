import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  base: '/simulador-libertas/',  // GitHub Pages path
  build: {
    outDir: 'dist',
    // Inline everything for simpler deployment
    assetsInlineLimit: 1000000,  // Inline all assets under 1MB
    rollupOptions: {
      output: {
        // Single JS bundle
        manualChunks: undefined,
      }
    }
  }
})
