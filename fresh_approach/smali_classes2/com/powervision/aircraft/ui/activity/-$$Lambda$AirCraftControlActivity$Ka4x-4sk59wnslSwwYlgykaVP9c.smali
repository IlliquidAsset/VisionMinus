.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Ka4x-4sk59wnslSwwYlgykaVP9c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Ka4x-4sk59wnslSwwYlgykaVP9c;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Ka4x-4sk59wnslSwwYlgykaVP9c;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Ka4x-4sk59wnslSwwYlgykaVP9c;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$Ka4x-4sk59wnslSwwYlgykaVP9c;->f$1:F

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$updateHight$6$AirCraftControlActivity(F)V

    return-void
.end method
