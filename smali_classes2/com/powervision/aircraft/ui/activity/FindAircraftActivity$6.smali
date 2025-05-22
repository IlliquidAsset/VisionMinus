.class Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$6;
.super Ljava/lang/Object;
.source "FindAircraftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->onClickLocation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$6;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$6;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->access$600(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)D

    move-result-wide v2

    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$6;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->access$700(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)D

    move-result-wide v4

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->access$500(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;IDD)V

    return-void
.end method
