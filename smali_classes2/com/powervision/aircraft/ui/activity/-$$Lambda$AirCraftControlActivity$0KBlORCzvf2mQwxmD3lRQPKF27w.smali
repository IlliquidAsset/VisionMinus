.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$0KBlORCzvf2mQwxmD3lRQPKF27w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$0KBlORCzvf2mQwxmD3lRQPKF27w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$0KBlORCzvf2mQwxmD3lRQPKF27w;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$0KBlORCzvf2mQwxmD3lRQPKF27w;-><init>()V

    sput-object v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$0KBlORCzvf2mQwxmD3lRQPKF27w;->INSTANCE:Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$0KBlORCzvf2mQwxmD3lRQPKF27w;

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

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$showChangeWaterModeDialog$50(Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
