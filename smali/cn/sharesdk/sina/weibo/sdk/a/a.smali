.class public Lcn/sharesdk/sina/weibo/sdk/a/a;
.super Ljava/lang/Object;
.source "WeiboWebPageLayout.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/webkit/WebView;

.field private d:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->d:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    return-object p0
.end method

.method private e()V
    .locals 6

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "weibosdk"

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0031405000"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_android"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 174
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 175
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 177
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeJavascriptInterface"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 182
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "searchBoxJavaBridge_"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 185
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 188
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    new-instance v1, Lcn/sharesdk/sina/weibo/sdk/a/a$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/sdk/a/a$2;-><init>(Lcn/sharesdk/sina/weibo/sdk/a/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/Button;
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    return-object v0
.end method

.method public a(I)Landroid/widget/RelativeLayout;
    .locals 9

    .line 43
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 50
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v4, "ssdk_sina_web_title_id"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    const v3, -0x20203

    .line 52
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 53
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const/16 v4, 0x37

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 54
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 55
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41880000    # 17.0f

    .line 59
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    const/16 v6, -0x7e00

    const v7, 0x66ff8200

    invoke-static {v6, v7}, Lcn/sharesdk/sina/weibo/sdk/a;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 61
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v6, "ssdk_sina_web_close"

    invoke-static {v4, v6}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 63
    iget-object v6, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 65
    :cond_0
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 66
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 67
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    new-instance v6, Lcn/sharesdk/sina/weibo/sdk/a/a$1;

    invoke-direct {v6, p0}, Lcn/sharesdk/sina/weibo/sdk/a/a$1;-><init>(Lcn/sharesdk/sina/weibo/sdk/a/a;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xf

    .line 79
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->b:Landroid/widget/TextView;

    const v7, -0xadadae

    .line 83
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->b:Landroid/widget/TextView;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    if-lez p1, :cond_1

    .line 86
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 89
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v7, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance p1, Landroid/webkit/WebView;

    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    .line 94
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {p1, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 96
    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v7, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance p1, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v7}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->d:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    .line 100
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-static {p1, v8}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p1

    .line 101
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result p1

    invoke-virtual {v7, v8, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->d:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    invoke-virtual {v0, p1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance p1, Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v2, "ssdk_weibo_common_shadow_top"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    :cond_2
    invoke-virtual {v0, p1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 115
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 117
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance p1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v7, "ssdk_weibo_empty_failed"

    invoke-static {v4, v7}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 125
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :cond_3
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 129
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 130
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->f:Landroid/widget/TextView;

    .line 133
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v1, "ssdk_sina_web_net_error"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 135
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :cond_4
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->f:Landroid/widget/TextView;

    const v1, -0x424243

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p1, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 139
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance p1, Landroid/widget/Button;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    const v1, -0x878788

    .line 143
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 144
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 145
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v5, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 146
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v1, "ssdk_sina_web_refresh"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    .line 148
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(I)V

    .line 151
    :cond_5
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const/16 v1, 0x8e

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p1

    .line 152
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 153
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 155
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->e()V

    return-object v0
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .line 206
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public c()Landroid/webkit/WebView;
    .locals 1

    .line 210
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method public d()Landroid/widget/LinearLayout;
    .locals 1

    .line 214
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method
