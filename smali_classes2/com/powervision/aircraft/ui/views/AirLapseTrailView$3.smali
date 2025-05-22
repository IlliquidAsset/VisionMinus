.class Lcom/powervision/aircraft/ui/views/AirLapseTrailView$3;
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

    .line 155
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$200(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$300(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$400(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$500(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method
