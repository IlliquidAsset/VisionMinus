.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eH4x2Sv-EN5f6rrC40g8NPUgWPA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field public final synthetic f$1:Lcom/powervision/base/views/AirDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Lcom/powervision/base/views/AirDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eH4x2Sv-EN5f6rrC40g8NPUgWPA;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eH4x2Sv-EN5f6rrC40g8NPUgWPA;->f$1:Lcom/powervision/base/views/AirDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eH4x2Sv-EN5f6rrC40g8NPUgWPA;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$eH4x2Sv-EN5f6rrC40g8NPUgWPA;->f$1:Lcom/powervision/base/views/AirDialog;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$showChangeWaterModeDialog$51$AirCraftControlActivity(Lcom/powervision/base/views/AirDialog;Ljava/lang/Integer;)V

    return-void
.end method
