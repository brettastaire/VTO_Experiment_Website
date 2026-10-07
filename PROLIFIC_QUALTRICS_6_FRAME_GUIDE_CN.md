# 六款眼镜版本：Prolific + Qualtrics 实验设置指南

## 一、正式实验设计

采用 2 × 2 between-subject design：

| Condition | VTO | Channel |
|---|---:|---:|
| Picture_Online | 0 | 0 |
| VTO_Online | 1 | 0 |
| Picture_Dual | 0 | 1 |
| VTO_Dual | 1 | 1 |

其中：

- `VTO = 0`：相同产品图片，但没有 VTO；
- `VTO = 1`：相同产品图片，再增加 VTO；
- `CHANNEL = 0`：没有附近实体店；
- `CHANNEL = 1`：约 10 分钟距离有实体店和验配协助。

## 二、两个网站链接

把下面的 repository 名称换成你的实际名称。

### Picture-only

```text
https://brettastaire.github.io/VTO_Experiment_Website_6_Frames/?vto=0
```

### Picture + VTO

```text
https://brettastaire.github.io/VTO_Experiment_Website_6_Frames/?vto=1
```

两个链接必须设置为在新 tab 中打开。

## 三、Qualtrics Survey Flow 顶部 Embedded Data

在 Survey Flow 最上方加入：

```text
PROLIFIC_PID
STUDY_ID
SESSION_ID
VTO
CHANNEL
CONDITION
website_success
viewed_all_six
vto_success
number_vto_tried
preferred_frame
```

前三项选择 `Value will be set from panel or URL`。

## 四、正确的 Survey Flow

```text
Embedded Data
↓
Consent
↓
Branch: No consent → End of Survey / return submission
↓
Shopping Scenario
↓
Randomizer 1: Randomly present 1; Evenly Present Elements
    ├── Group 1: VTO=0, CHANNEL=0, CONDITION=Picture_Online
    │      Pure Online Information
    │      Picture-only Website Instruction
    ├── Group 2: VTO=1, CHANNEL=0, CONDITION=VTO_Online
    │      Pure Online Information
    │      VTO Website Instruction
    ├── Group 3: VTO=0, CHANNEL=1, CONDITION=Picture_Dual
    │      Dual Channel Information
    │      Picture-only Website Instruction
    └── Group 4: VTO=1, CHANNEL=1, CONDITION=VTO_Dual
           Dual Channel Information
           VTO Website Instruction
↓
Website Experience Check
↓
Randomizer 2: Present BOTH in random order
    ├── Information Richness
    └── Convenience
↓
Preferred Frame + Purchase Likelihood
↓
Behavioral Choice
↓
Channel Choice（CHANNEL=1 only）
↓
Controls
↓
Demographics
↓
Debrief
↓
Redirect to Prolific
```

不要在 Randomizer 1 外面再次放 Block 3A、3B、4A、4B。Randomizer 之外只能放所有参与者都应该看到的共同 blocks。

## 五、共同 Shopping Scenario

```text
Imagine that you need a new pair of everyday prescription glasses within the next two weeks. The frame prices, lens quality, warranty, promotions, and return window are the same across retailers. You are now considering purchasing from Luma Eyewear.

Please imagine that this is a real shopping decision and evaluate Luma Eyewear as you normally would when shopping for prescription eyeglasses.
```

## 六、Channel manipulation

### Pure Online

```text
Online shopping
You can browse and purchase Luma Eyewear products online and have your eyeglasses delivered to your home.

Physical store
Luma Eyewear does not have a physical location where you can physically try on the frames or receive fitting assistance before ordering.
```

### Dual Channel

```text
Online shopping
You can browse and purchase Luma Eyewear products online and have your eyeglasses delivered to your home.

Nearby physical store — approximately 10 minutes away
The store carries the same frames shown online. You can physically try on the frames and receive assistance from an optician to assess comfort, bridge fit, temple pressure, size, and necessary adjustments.
```

随后加入 comprehension check：

```text
Based on the information above, does Luma Eyewear have a nearby physical store where you can try on the eyeglasses?

Yes
No
```

第一次答错时，让其返回重读，不要立即排除。

## 七、六款产品的 Website Instruction

### Picture-only condition

```text
Please open the Luma Eyewear website and explore all six eyeglass frames.

For each frame:
- open the product page;
- review the available product images;
- review the price, rating, size, and product information;
- consider whether you would purchase the frame.

After reviewing all six frames, identify the three frames you prefer most. Then return to this survey tab and continue.
```

### Picture + VTO condition

```text
Please open the Luma Eyewear website and explore all six eyeglass frames.

For each frame:
- open the product page;
- review the available product images;
- review the price, rating, size, and product information;
- consider whether you would purchase the frame.

You also have access to Virtual Try-On. Please virtually try on at least three frames, including the frame you are most likely to purchase. Then return to this survey tab and continue.
```

要求 VTO 参与者至少试三款，而不是强制试六款，可以避免人为增加过多操作负担，从而污染 Convenience 这一中介变量。

## 八、Website Experience Check

共同问题：

1. `Were you able to open and use the Luma Eyewear website successfully?` Yes / No
2. `Did you review all six eyeglass frames?` Yes / No
3. `Which frame would you be most likely to purchase?`
   - Black Round
   - Brown Square
   - Silver Aviator
   - Rose Cat Eye
   - Crystal Oval
   - Burgundy Butterfly

只对 VTO=1 显示：

4. `Were you able to use Virtual Try-On successfully?` Yes / No
5. `How many different frames did you virtually try on?` 0–6
6. 如果失败，原因：camera permission / camera unavailable / face tracking / overlay / page load / other。

Primary analysis 使用 randomized assignment（ITT）；成功使用 VTO 的子样本只作为 robustness analysis。

## 九、Manipulation checks

7-point Likert：

### VTO

```text
The retailer provided a virtual try-on tool that allowed me to see the eyeglasses on my own face.
```

### Channel

```text
Luma Eyewear provides a nearby physical store where I could physically try on the eyeglasses.
```

## 十、Information Richness

使用原来的 5 项，1 = Strongly disagree，7 = Strongly agree：

1. This shopping experience provides rich information about the eyeglasses.
2. This shopping experience provides detailed information that helps me evaluate the eyeglasses.
3. The information available through this retailer gives me a comprehensive understanding of the eyeglasses.
4. The information provided through this shopping experience is sufficient for evaluating whether the eyeglasses are suitable for me.
5. This shopping experience allows me to evaluate the eyeglasses from multiple perspectives.

## 十一、Convenience

1. Shopping for eyeglasses through this retailer would be convenient.
2. This shopping experience would allow me to evaluate and purchase eyeglasses with little effort.
3. This retailer would make the process of finding suitable eyeglasses easy.
4. This shopping experience would save me time and effort.
5. This retailer gives me convenient options for completing my purchase.

IR 和 Convenience 两个 block 放入第二个 Randomizer，并设置为 `Present all elements in random order`。

## 十二、Purchase outcomes

### Purchase likelihood

1. I would be likely to purchase a pair of eyeglasses from this retailer.
2. I would seriously consider purchasing from this retailer.
3. The probability that I would purchase from this retailer is high.

### Behavioral-style choice

```text
If you had to make your decision now, what would you do?

- Purchase a pair of eyeglasses from Luma Eyewear
- Continue shopping at another retailer
```

### Dual-channel only

```text
If you decided to purchase from Luma Eyewear, how would you most likely complete your purchase?

- Purchase online and have the glasses shipped home
- Visit the physical store before purchasing
- Select or reserve online and complete the purchase in store
```

## 十三、Controls

建议只保留：

- previous VTO use；
- previous online eyeglass purchase；
- preference for physical try-on；
- familiarity with VTO；
- most recent eyeglass purchase；
- age, gender, education, income。

## 十四、Debrief 必须说明

```text
The retailer, product names, ratings, review counts, and shopping scenario used in this study were created or standardized for research purposes. Participants were randomly assigned to different versions of the shopping experience.
```

## 十五、Prolific Study Setup

### Title

`Online Eyeglass Shopping Study`

### Description

```text
You will evaluate an online eyeglass retailer and answer questions about your shopping experience and purchase decisions. Depending on the version of the website you receive, you may be asked to use your webcam for a virtual try-on task. Webcam images are processed locally in your browser and are not recorded or stored by the study webpage. Please participate using a desktop or laptop with a working webcam.
```

### Audience

- United States
- Age 18+
- Desktop/laptop
- Camera required
- Current prescription-eyeglass wearer, if an appropriate Prolific prescreener is available

### Data collection

- Study URL: Qualtrics link, not GitHub link
- Select `I'll use URL parameters`
- Capture `PROLIFIC_PID`, `STUDY_ID`, `SESSION_ID`

### Completion

Copy Prolific's completion redirect URL into the final Qualtrics End of Survey element.

## 十六、Pilot plan

### Technical pilot

12–20 participants：

- four conditions all appear；
- camera opens；
- six VTO overlays work；
- GitHub links open in new tab；
- participants return to Qualtrics；
- Prolific IDs save correctly；
- completion redirect works。

### Methodological pilot

80–120 participants：

- VTO manipulation check；
- channel manipulation check；
- reliability of IR, Convenience, Purchase；
- technical failure rate；
- completion-time distribution；
- direction of VTO × Channel interaction。

### Main study

Use pilot estimates for formal power analysis. A reasonable planning range is 800–1,000 participants before the formal calculation.

## 十七、时间和支付

六款产品版本预计约 10–12 分钟。先根据 pilot 的 median completion time 更新 Prolific estimated time。以 $12/hour 为目标：

- 10 minutes ≈ $2.00
- 12 minutes ≈ $2.40

## 十八、分析顺序

1. Calculate scale means:
   - IR = mean(IR1–IR5)
   - CONV = mean(C1–C5)
   - PURCHASE = mean(P1–P3)
2. Reliability and discriminant validity.
3. Core interaction:

   `PURCHASE = b0 + b1 VTO + b2 CHANNEL + b3 VTO×CHANNEL + error`

4. Mediator outcomes:

   `IR = a0 + a1 VTO + a2 CHANNEL + a3 VTO×CHANNEL + error`

   `CONV = d0 + d1 VTO + d2 CHANNEL + d3 VTO×CHANNEL + error`

5. PROCESS Model 7 separately for IR and Convenience, bootstrap 5,000.
6. Final parallel-mediator model including IR and Convenience together.
7. Report the index of moderated mediation and bootstrapped confidence interval.
