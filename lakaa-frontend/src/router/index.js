import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/CSR',
      name: 'CSR',
      component: () => import('../views/CSRView.vue')
    },
    {
      path: '/Store',
      name: 'store',
      component: () => import('../views/StoreView.vue')
    }
  ]
})
export default router
