.class Lcom/powervision/base/base/BaseApplication$2;
.super Lcom/orhanobut/logger/AndroidLogAdapter;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/base/BaseApplication;->initLogger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/base/BaseApplication;


# direct methods
.method constructor <init>(Lcom/powervision/base/base/BaseApplication;Lcom/orhanobut/logger/FormatStrategy;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/powervision/base/base/BaseApplication$2;->this$0:Lcom/powervision/base/base/BaseApplication;

    invoke-direct {p0, p2}, Lcom/orhanobut/logger/AndroidLogAdapter;-><init>(Lcom/orhanobut/logger/FormatStrategy;)V

    return-void
.end method


# virtual methods
.method public isLoggable(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
