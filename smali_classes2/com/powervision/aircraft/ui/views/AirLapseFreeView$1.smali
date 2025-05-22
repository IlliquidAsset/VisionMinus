.class Lcom/powervision/aircraft/ui/views/AirLapseFreeView$1;
.super Ljava/lang/Object;
.source "AirLapseFreeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$1;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$1;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$000(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$1;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$000(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;->close()V

    :cond_0
    return-void
.end method
