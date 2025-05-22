.class public final synthetic Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$fYGFvnYbWjvErmzOfcw1NxaayMs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$fYGFvnYbWjvErmzOfcw1NxaayMs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$fYGFvnYbWjvErmzOfcw1NxaayMs;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$fYGFvnYbWjvErmzOfcw1NxaayMs;-><init>()V

    sput-object v0, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$fYGFvnYbWjvErmzOfcw1NxaayMs;->INSTANCE:Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$fYGFvnYbWjvErmzOfcw1NxaayMs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->dismissDialog()V

    return-void
.end method
