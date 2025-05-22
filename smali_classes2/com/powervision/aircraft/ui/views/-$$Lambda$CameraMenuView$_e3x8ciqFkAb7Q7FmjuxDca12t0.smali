.class public final synthetic Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$_e3x8ciqFkAb7Q7FmjuxDca12t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$_e3x8ciqFkAb7Q7FmjuxDca12t0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$_e3x8ciqFkAb7Q7FmjuxDca12t0;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$_e3x8ciqFkAb7Q7FmjuxDca12t0;-><init>()V

    sput-object v0, Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$_e3x8ciqFkAb7Q7FmjuxDca12t0;->INSTANCE:Lcom/powervision/aircraft/ui/views/-$$Lambda$CameraMenuView$_e3x8ciqFkAb7Q7FmjuxDca12t0;

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

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->lambda$setDelayTime$2(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
