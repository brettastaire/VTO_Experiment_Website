# GitHub Pages 最终发布操作指南

## 一、你要上传哪些内容

解压本压缩包后，上传文件夹**里面的全部内容**，不要再套一层文件夹。Repository 根目录应该直接显示：

```text
index.html
.nojekyll
assets/
frames/
README.md
GITHUB_PAGES_SETUP_CN.md
PROLIFIC_QUALTRICS_6_FRAME_GUIDE_CN.md
PILOT_CHECKLIST_CN.txt
Start Website.command
```

最关键的是：`index.html`、`assets/` 和 `frames/` 必须处于同一 repository 根目录。

## 二、创建 GitHub repository

1. 登录 GitHub。
2. 点击右上角 `+`。
3. 选择 `New repository`。
4. Repository name 建议填写：

   `VTO_Experiment_Website_6_Frames`

5. 选择 `Public`。
6. 点击 `Create repository`。

## 三、上传网站文件

1. 进入新 repository。
2. 点击 `Add file`。
3. 点击 `Upload files`。
4. 打开解压后的最终网站文件夹。
5. 选中该文件夹中的全部文件和文件夹，拖入 GitHub 上传页面。
6. 确认上传列表中能直接看到 `index.html`、`assets`、`frames`。
7. 在 Commit message 输入：

   `Upload final six-frame VTO experiment website`

8. 点击 `Commit changes`。

## 四、打开 GitHub Pages

1. 点击 repository 顶部 `Settings`。
2. 左侧点击 `Pages`。
3. 在 `Build and deployment` 下：
   - Source：`Deploy from a branch`
   - Branch：`main`
   - Folder：`/(root)`
4. 点击 `Save`。
5. 等待 GitHub 发布完成。

## 五、正式实验链接

假设 GitHub 用户名是 `brettastaire`，repository 叫 `VTO_Experiment_Website_6_Frames`：

### Picture-only control

```text
https://brettastaire.github.io/VTO_Experiment_Website_6_Frames/?vto=0
```

### Picture + VTO treatment

```text
https://brettastaire.github.io/VTO_Experiment_Website_6_Frames/?vto=1
```

## 六、必须完成的发布测试

### `?vto=0`

确认：

- 首页有 6 款眼镜；
- 每款价格都是 $149.00；
- 点开产品后显示 4 张图；
- 显示 4.9 评分；
- 显示尺寸；
- 不显示 Virtual Try-On 选项。

### `?vto=1`

确认：

- 页面其他内容与 control 完全相同；
- 产品卡显示 VTO available；
- 产品详情显示 Virtual Try-On 按钮；
- 摄像头权限可以打开；
- 6 款镜框都能切换；
- 女士款 VTO 也能正常显示。

### 浏览器测试

至少测试：

- Chrome on Mac；
- Safari on Mac；
- Chrome on Windows（请让同事测试）；
- 普通窗口和无痕窗口。

## 七、更新网站

以后修改网站时：

1. 在 repository 中点击 `Add file → Upload files`；
2. 上传修改后的同名文件；
3. GitHub 会提示替换；
4. Commit changes；
5. 等待 Pages 重新发布；
6. 使用无痕窗口验证新版页面。

## 八、隐私提醒

GitHub Pages 是公开网站。不要把以下内容放进 repository：

- participant 名单；
- Prolific PID 数据文件；
- Qualtrics 导出数据；
- 任何真实照片或面部视频；
- API keys、密码或登录凭据。
