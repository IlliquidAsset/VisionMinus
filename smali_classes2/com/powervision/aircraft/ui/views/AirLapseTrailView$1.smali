.class Lcom/powervision/aircraft/ui/views/AirLapseTrailView$1;
.super Ljava/lang/Object;
.source "AirLapseTrailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$1;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$1;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$000(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$1;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$000(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;->close()V

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$1;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->startTrailShoot()V

    return-void
.end method
