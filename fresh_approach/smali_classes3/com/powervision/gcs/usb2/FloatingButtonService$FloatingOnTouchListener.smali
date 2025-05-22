.class Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;
.super Ljava/lang/Object;
.source "FloatingButtonService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/FloatingButtonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

.field private x:I

.field private y:I


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/usb2/FloatingButtonService;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/usb2/FloatingButtonService;Lcom/powervision/gcs/usb2/FloatingButtonService$1;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;-><init>(Lcom/powervision/gcs/usb2/FloatingButtonService;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 146
    iget v1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->x:I

    sub-int v1, v0, v1

    .line 147
    iget v2, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->y:I

    sub-int v2, p2, v2

    .line 148
    iput v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->x:I

    .line 149
    iput p2, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->y:I

    .line 150
    iget-object p2, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    invoke-static {p2}, Lcom/powervision/gcs/usb2/FloatingButtonService;->access$200(Lcom/powervision/gcs/usb2/FloatingButtonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/FloatingButtonService;->access$200(Lcom/powervision/gcs/usb2/FloatingButtonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 151
    iget-object p2, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    invoke-static {p2}, Lcom/powervision/gcs/usb2/FloatingButtonService;->access$200(Lcom/powervision/gcs/usb2/FloatingButtonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/FloatingButtonService;->access$200(Lcom/powervision/gcs/usb2/FloatingButtonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 152
    iget-object p2, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    invoke-static {p2}, Lcom/powervision/gcs/usb2/FloatingButtonService;->access$300(Lcom/powervision/gcs/usb2/FloatingButtonService;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/FloatingButtonService;->access$200(Lcom/powervision/gcs/usb2/FloatingButtonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->x:I

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$FloatingOnTouchListener;->y:I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
