.class public Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;
.super Ljava/lang/Object;
.source "TimeMechine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/utils/TimeMechine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeMode"
.end annotation


# instance fields
.field hasdl01:Z

.field repeat_times:I

.field sleepTime:J

.field start:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->repeat_times:I

    .line 108
    iput-boolean v0, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->hasdl01:Z

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->start:F

    const-wide/16 v0, 0x3e8

    .line 122
    iput-wide v0, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->sleepTime:J

    .line 123
    iput p1, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->repeat_times:I

    return-void
.end method

.method public constructor <init>(JIZF)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->repeat_times:I

    .line 108
    iput-boolean v0, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->hasdl01:Z

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->start:F

    .line 112
    iput-wide p1, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->sleepTime:J

    .line 113
    iput p3, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->repeat_times:I

    .line 114
    iput-boolean p4, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->hasdl01:Z

    .line 115
    iput p5, p0, Lcn/powervision/upgrade/utils/TimeMechine$TimeMode;->start:F

    return-void
.end method
