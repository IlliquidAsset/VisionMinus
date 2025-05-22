.class public Lcom/powervision/home/view/NeedCheckActiviteTextView;
.super Landroid/widget/TextView;
.source "NeedCheckActiviteTextView.java"

# interfaces
.implements Lcom/powervision/home/view/NeedCheckActiviteStateListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field count:I

.field private mcontext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/home/view/NeedCheckActiviteTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView;->count:I

    .line 33
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView;->mcontext:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->changeActiviteState(I)V

    .line 36
    sget-object p1, Lcom/powervision/home/view/NeedCheckActiviteTextView;->TAG:Ljava/lang/String;

    const-string p2, "changeActiviteState: 11111"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/view/NeedCheckActiviteTextView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->onActiveBtnClick()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/powervision/home/view/NeedCheckActiviteTextView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onActiveBtnClick()V
    .locals 3

    .line 104
    sget-boolean v0, Lcom/powervision/base/config/GlobalConfig;->canInActivity:Z

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/powervision/home/view/NeedCheckActiviteTextView$2;

    invoke-direct {v0, p0}, Lcom/powervision/home/view/NeedCheckActiviteTextView$2;-><init>(Lcom/powervision/home/view/NeedCheckActiviteTextView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->inOrswtich()V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeActiviteState(I)V
    .locals 3

    .line 52
    sget-object v0, Lcom/powervision/home/view/NeedCheckActiviteTextView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeActiviteState 333: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;-><init>(Lcom/powervision/home/view/NeedCheckActiviteTextView;I)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public inOrswtich()V
    .locals 3

    .line 121
    sget-object v0, Lcom/powervision/home/view/NeedCheckActiviteTextView;->TAG:Ljava/lang/String;

    const-string v1, "inOrswtich: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "lzqrtsp"

    const-string v1, "\u70b9\u51fb\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$PVW4;->getShipMainActivity()Landroid/app/Activity;

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$PVW4;->getConnectGuideBottomDialogFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 127
    iget-object v1, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView;->mcontext:Landroid/app/Activity;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ConnectGuideBottomDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
