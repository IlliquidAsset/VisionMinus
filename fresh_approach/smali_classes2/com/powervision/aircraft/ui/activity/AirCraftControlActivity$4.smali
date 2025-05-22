.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$4;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->updateHight(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$hight:F


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$4;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$4;->val$hight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1113
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$4;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;

    move-result-object v0

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$4;->val$hight:F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v1}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->updateSurroundParmas(FF)V

    return-void
.end method
