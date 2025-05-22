.class Lcom/powervision/aircraft/ui/views/CameraMenuView$2;
.super Ljava/lang/Object;
.source "CameraMenuView.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/views/CircleMenuLayout$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;->initCircleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$2;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoScrollBack(IZI)V
    .locals 0

    .line 251
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$2;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$100(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, p1

    invoke-static {p2, p3}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$200(Lcom/powervision/aircraft/ui/views/CameraMenuView;Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$2;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p2, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$300(Lcom/powervision/aircraft/ui/views/CameraMenuView;I)V

    return-void
.end method

.method public itemClick(Landroid/view/View;IZI)V
    .locals 0

    .line 243
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$2;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$100(Lcom/powervision/aircraft/ui/views/CameraMenuView;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, p2

    invoke-static {p1, p3}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$200(Lcom/powervision/aircraft/ui/views/CameraMenuView;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$2;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$300(Lcom/powervision/aircraft/ui/views/CameraMenuView;I)V

    return-void
.end method
