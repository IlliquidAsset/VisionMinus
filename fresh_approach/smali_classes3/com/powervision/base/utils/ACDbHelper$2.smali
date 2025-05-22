.class Lcom/powervision/base/utils/ACDbHelper$2;
.super Ljava/lang/Object;
.source "ACDbHelper.java"

# interfaces
.implements Lorg/xutils/DbManager$DbOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/ACDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/ACDbHelper;


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/ACDbHelper;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/powervision/base/utils/ACDbHelper$2;->this$0:Lcom/powervision/base/utils/ACDbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDbOpened(Lorg/xutils/DbManager;)V
    .locals 0

    .line 27
    invoke-interface {p1}, Lorg/xutils/DbManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    return-void
.end method
