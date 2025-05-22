.class Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;
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

    .line 125
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$200(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$300(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_1

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$200(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$300(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_1

    .line 132
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$200(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$300(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 139
    :goto_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$400(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$2;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$500(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method
