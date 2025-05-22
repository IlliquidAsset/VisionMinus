.class public Lcom/powervision/handheld/ui/activity/TestActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aa:[B

.field private testBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/16 v0, 0x372

    new-array v0, v0, [B

    .line 18
    iput-object v0, p0, Lcom/powervision/handheld/ui/activity/TestActivity;->aa:[B

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/ui/activity/TestActivity;)[B
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/powervision/handheld/ui/activity/TestActivity;->aa:[B

    return-object p0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 22
    sget v0, Lcom/powervision/handheld/R$layout;->hanheld_test_layout:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->initData()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x372

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/TestActivity;->aa:[B

    const/4 v2, 0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/TestActivity;->aa:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pcm_test_value"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    sget p1, Lcom/powervision/handheld/R$id;->hand_button:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/TestActivity;->testBtn:Landroid/widget/Button;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 42
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/TestActivity;->testBtn:Landroid/widget/Button;

    new-instance v1, Lcom/powervision/handheld/ui/activity/TestActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/TestActivity$1;-><init>(Lcom/powervision/handheld/ui/activity/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
