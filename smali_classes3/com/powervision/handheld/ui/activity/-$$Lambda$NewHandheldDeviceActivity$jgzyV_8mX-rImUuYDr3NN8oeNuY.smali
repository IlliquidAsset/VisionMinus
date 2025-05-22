.class public final synthetic Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$jgzyV_8mX-rImUuYDr3NN8oeNuY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$jgzyV_8mX-rImUuYDr3NN8oeNuY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$jgzyV_8mX-rImUuYDr3NN8oeNuY;

    invoke-direct {v0}, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$jgzyV_8mX-rImUuYDr3NN8oeNuY;-><init>()V

    sput-object v0, Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$jgzyV_8mX-rImUuYDr3NN8oeNuY;->INSTANCE:Lcom/powervision/handheld/ui/activity/-$$Lambda$NewHandheldDeviceActivity$jgzyV_8mX-rImUuYDr3NN8oeNuY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->lambda$setDelayTime$4(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
