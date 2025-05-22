.class public Lcom/powervision/gcs/usb2/FloatingButtonService;
.super Landroid/app/Service;
.source "FloatingButtonService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;,
        Lcom/powervision/gcs/usb2/FloatingButtonService$MsgBinder;
    }
.end annotation


# static fields
.field public static isStarted:Z = false


# instance fields
.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field startConent:Ljava/lang/String;

.field private tx:Landroid/widget/TextView;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, ""

    .line 112
    iput-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->startConent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/usb2/FloatingButtonService;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->tx:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/usb2/FloatingButtonService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/usb2/FloatingButtonService;)Landroid/view/WindowManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private showFloatingWindow()V
    .locals 4

    .line 83
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/FloatingButtonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/libaoa/R$layout;->activity_chat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 88
    sget v1, Lcom/powervision/libaoa/R$id;->content_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->tx:Landroid/widget/TextView;

    .line 89
    sget v1, Lcom/powervision/libaoa/R$id;->bt1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/powervision/gcs/usb2/FloatingButtonService$1;

    invoke-direct {v3, p0}, Lcom/powervision/gcs/usb2/FloatingButtonService$1;-><init>(Lcom/powervision/gcs/usb2/FloatingButtonService;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v1, Lcom/powervision/libaoa/R$id;->bt2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/powervision/gcs/usb2/FloatingButtonService$2;

    invoke-direct {v3, p0}, Lcom/powervision/gcs/usb2/FloatingButtonService$2;-><init>(Lcom/powervision/gcs/usb2/FloatingButtonService;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v1, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;

    invoke-direct {v1, p0, v2}, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;-><init>(Lcom/powervision/gcs/usb2/FloatingButtonService;Lcom/powervision/gcs/usb2/FloatingButtonService$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getText()V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 60
    new-instance p1, Lcom/powervision/gcs/usb2/FloatingButtonService$MsgBinder;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/usb2/FloatingButtonService$MsgBinder;-><init>(Lcom/powervision/gcs/usb2/FloatingButtonService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lcom/powervision/gcs/usb2/FloatingButtonService;->isStarted:Z

    const-string v1, "window"

    .line 41
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/usb2/FloatingButtonService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->windowManager:Landroid/view/WindowManager;

    .line 42
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 44
    iget-object v1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7f6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 49
    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 51
    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x1f4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x12c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 54
    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/powervision/gcs/usb2/FloatingButtonService;->showFloatingWindow()V

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->tx:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Lcom/powervision/gcs/usb2/FloatingButtonService$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/usb2/FloatingButtonService$3;-><init>(Lcom/powervision/gcs/usb2/FloatingButtonService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->startConent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService;->startConent:Ljava/lang/String;

    :goto_0
    return-void
.end method
