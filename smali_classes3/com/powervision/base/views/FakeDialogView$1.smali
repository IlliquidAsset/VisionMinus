.class Lcom/powervision/base/views/FakeDialogView$1;
.super Ljava/lang/Object;
.source "FakeDialogView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/FakeDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/FakeDialogView;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/FakeDialogView;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/powervision/base/views/FakeDialogView$1;->this$0:Lcom/powervision/base/views/FakeDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
