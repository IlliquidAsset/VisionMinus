.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$6tHRXRRX7JPO-mUMJGKBqPtZ9mI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$6tHRXRRX7JPO-mUMJGKBqPtZ9mI;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$6tHRXRRX7JPO-mUMJGKBqPtZ9mI;->f$1:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$6tHRXRRX7JPO-mUMJGKBqPtZ9mI;->f$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$6tHRXRRX7JPO-mUMJGKBqPtZ9mI;->f$1:[I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$showHistogramData$27$AirCraftControlActivity([I)V

    return-void
.end method
