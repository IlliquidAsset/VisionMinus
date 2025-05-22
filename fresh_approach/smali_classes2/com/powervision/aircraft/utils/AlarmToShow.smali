.class public Lcom/powervision/aircraft/utils/AlarmToShow;
.super Ljava/lang/Object;
.source "AlarmToShow.java"


# static fields
.field private static alarmToShow:Lcom/powervision/aircraft/utils/AlarmToShow;


# instance fields
.field private mContext:Landroid/content/Context;

.field private warnInfo:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/powervision/aircraft/utils/AlarmToShow;->mContext:Landroid/content/Context;

    .line 28
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/utils/AlarmToShow;->warnInfo:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/powervision/aircraft/utils/AlarmToShow;
    .locals 1

    .line 19
    sget-object v0, Lcom/powervision/aircraft/utils/AlarmToShow;->alarmToShow:Lcom/powervision/aircraft/utils/AlarmToShow;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/powervision/aircraft/utils/AlarmToShow;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/utils/AlarmToShow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/powervision/aircraft/utils/AlarmToShow;->alarmToShow:Lcom/powervision/aircraft/utils/AlarmToShow;

    .line 22
    :cond_0
    sget-object p0, Lcom/powervision/aircraft/utils/AlarmToShow;->alarmToShow:Lcom/powervision/aircraft/utils/AlarmToShow;

    return-object p0
.end method


# virtual methods
.method public doAlarm(J)V
    .locals 3

    const-wide/16 v0, 0x4

    and-long/2addr p1, v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 34
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
