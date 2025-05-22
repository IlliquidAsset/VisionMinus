.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$26;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/aircraft/utils/OrientationDetector$RotationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 3583
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$26;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotation(I)V
    .locals 1

    .line 3586
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$26;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9702(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)I

    return-void
.end method
