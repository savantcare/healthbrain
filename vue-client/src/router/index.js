import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: () => import(/* webpackChunkName: "home" */'@/views/Home.vue')
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import(/* webpackChunkName: "login" */'@/views/Login.vue')
  },
  {
    path: '/reminder',
    name: 'reminder',
    component: () => import('@/views/Reminder.vue')
  },
  {
    path: '/assessment',
    name: 'assessment',
    component: () => import('@/views/Assessment.vue')
  },
  {
    path: '/service-statement',
    name: 'service-statement',
    component: () => import('@/views/ServiceStatement.vue')
  },
  {
    path: '/goals',
    name: 'goals',
    component: () => import('@/views/Goals.vue')
  },
  {
    path: '/recommendation',
    name: 'recommendation',
    component: () => import('@/views/Recommendation.vue')
  },
  {
    path: '/social-history',
    name: 'social-history',
    component: () => import('@/views/SocialHistory.vue')
  },
  {
    path: '/screening',
    name: 'screening',
    component: () => import('@/views/Screening.vue')
  },
  {
    path: '/tab-dialog',
    name: 'tab-dialog',
    component: () => import("@/views/TabDialog.vue")
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

router.beforeEach((to, from, next) => {
  const token = localStorage.getItem("token")

  if (to.path == '/login' || token) {
    next()
  } else {
    next('/login')
  }
})

export default router
