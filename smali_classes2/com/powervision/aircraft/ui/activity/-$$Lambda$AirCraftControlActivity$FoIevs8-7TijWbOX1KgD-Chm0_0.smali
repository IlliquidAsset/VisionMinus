.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;->f$1:I

    iput p3, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;->f$2:I

    iput-boolean p4, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;->f$1:I

    iget v2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;->f$2:I

    iget-boolean v3, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$FoIevs8-7TijWbOX1KgD-Chm0_0;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$updateWarnInfo$16$AirCraftControlActivity(IIZ)V

    return-void
.end method
