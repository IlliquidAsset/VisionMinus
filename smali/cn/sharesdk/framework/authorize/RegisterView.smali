.class public Lcn/sharesdk/framework/authorize/RegisterView;
.super Lcn/sharesdk/framework/authorize/ResizeLayout;
.source "RegisterView.java"


# instance fields
.field private a:Lcn/sharesdk/framework/TitleLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/ResizeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/framework/authorize/ResizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/authorize/RegisterView;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/sharesdk/framework/authorize/RegisterView;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 11

    const/4 v0, -0x1

    .line 44
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/authorize/RegisterView;->setBackgroundColor(I)V

    const/4 v1, 0x1

    .line 45
    invoke-virtual {p0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;->setOrientation(I)V

    .line 46
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/RegisterView;->b(Landroid/content/Context;)I

    move-result v2

    .line 48
    new-instance v3, Lcn/sharesdk/framework/TitleLayout;

    invoke-direct {v3, p1}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/framework/authorize/RegisterView;->a:Lcn/sharesdk/framework/TitleLayout;

    :try_start_0
    const-string v3, "ssdk_auth_title_back"

    .line 50
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 52
    iget-object v4, p0, Lcn/sharesdk/framework/authorize/RegisterView;->a:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4, v3}, Lcn/sharesdk/framework/TitleLayout;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 55
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 57
    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/sharesdk/framework/authorize/RegisterView;->a:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v3}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/RegisterView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "ssdk_weibo_oauth_regiseter"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 60
    iget-object v5, p0, Lcn/sharesdk/framework/authorize/RegisterView;->a:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v5}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 62
    :cond_1
    iget-object v3, p0, Lcn/sharesdk/framework/authorize/RegisterView;->a:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {p0, v3}, Lcn/sharesdk/framework/authorize/RegisterView;->addView(Landroid/view/View;)V

    .line 64
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v5, "ssdk_logo"

    .line 65
    invoke-static {p1, v5}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    .line 67
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :cond_2
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v5, 0xa

    .line 70
    invoke-static {p1, v5}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    .line 71
    invoke-virtual {v3, v7, v7, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 72
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v6, Lcn/sharesdk/framework/authorize/RegisterView$1;

    invoke-direct {v6, p0}, Lcn/sharesdk/framework/authorize/RegisterView$1;-><init>(Lcn/sharesdk/framework/authorize/RegisterView;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v6, p0, Lcn/sharesdk/framework/authorize/RegisterView;->a:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v6, v3}, Lcn/sharesdk/framework/TitleLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/framework/authorize/RegisterView;->b:Landroid/widget/RelativeLayout;

    .line 95
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 96
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 97
    iget-object v8, p0, Lcn/sharesdk/framework/authorize/RegisterView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v3, p0, Lcn/sharesdk/framework/authorize/RegisterView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcn/sharesdk/framework/authorize/RegisterView;->addView(Landroid/view/View;)V

    .line 100
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v8, p0, Lcn/sharesdk/framework/authorize/RegisterView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 107
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcn/sharesdk/framework/authorize/RegisterView;->d:Landroid/widget/TextView;

    .line 108
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x5

    invoke-direct {v9, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v8, p0, Lcn/sharesdk/framework/authorize/RegisterView;->d:Landroid/widget/TextView;

    const v9, -0xc54916

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 111
    iget-object v8, p0, Lcn/sharesdk/framework/authorize/RegisterView;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v8, p0, Lcn/sharesdk/framework/authorize/RegisterView;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/framework/authorize/RegisterView;->c:Landroid/webkit/WebView;

    .line 115
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    iput v6, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 118
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance p1, Lcn/sharesdk/framework/authorize/RegisterView$2;

    invoke-direct {p1, p0, v2}, Lcn/sharesdk/framework/authorize/RegisterView$2;-><init>(Lcn/sharesdk/framework/authorize/RegisterView;I)V

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v5, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_3

    .line 135
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "removeJavascriptInterface"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 137
    iget-object v2, p0, Lcn/sharesdk/framework/authorize/RegisterView;->c:Landroid/webkit/WebView;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "searchBoxJavaBridge_"

    aput-object v4, v1, v7

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 140
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 143
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 144
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/RegisterView;->c:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/RegisterView;->c:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method

.method private b(Landroid/content/Context;)I
    .locals 3

    .line 149
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    instance-of v1, p1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 154
    :cond_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 159
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 160
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p1
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView;->a:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView;->a:Lcn/sharesdk/framework/TitleLayout;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/TitleLayout;->setVisibility(I)V

    return-void
.end method

.method public b()Landroid/webkit/WebView;
    .locals 1

    .line 172
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method public c()Lcn/sharesdk/framework/TitleLayout;
    .locals 1

    .line 176
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView;->a:Lcn/sharesdk/framework/TitleLayout;

    return-object v0
.end method

.method public d()Landroid/widget/RelativeLayout;
    .locals 1

    .line 180
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/RegisterView;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method
