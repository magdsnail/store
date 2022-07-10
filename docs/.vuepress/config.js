module.exports = {
  title: 'Short story',
  description: 'Short story',
  themeConfig: {
    subSidebar: 'auto',
    nav: [
      { text: '首页', link: '/' },
      {
        text: '睡前小故事',
        items: [
          { text: 'Github', link: 'https://github.com/magdsnail' }
        ]
      }
    ],
    sidebar: [
      {
        title: "年轻人少熬夜",
        path: '/',
        collapsable: false,
        children: [
          {
            title: '卷起来', path: '/'
          }
        ]
      },
      {
        title: "小睡",
        path: '/handbook/aaa',
        collapsable: false, // 不折叠
        children: [
          { title: "睡了吗", path: "/handbook/aaa" },
          { title: "睡了", path: "/handbook/bbb" }
        ],
      }
    ]
  },
  theme: 'reco',
  locales: {
    '/': {
      lang: 'zh-CN'
    }
  },
  base: '/store/'
}