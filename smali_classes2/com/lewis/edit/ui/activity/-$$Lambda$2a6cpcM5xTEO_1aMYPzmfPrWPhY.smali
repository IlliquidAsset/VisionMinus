.class public final synthetic Lcom/lewis/edit/ui/activity/-$$Lambda$2a6cpcM5xTEO_1aMYPzmfPrWPhY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/lewis/edit/ui/activity/-$$Lambda$2a6cpcM5xTEO_1aMYPzmfPrWPhY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lewis/edit/ui/activity/-$$Lambda$2a6cpcM5xTEO_1aMYPzmfPrWPhY;

    invoke-direct {v0}, Lcom/lewis/edit/ui/activity/-$$Lambda$2a6cpcM5xTEO_1aMYPzmfPrWPhY;-><init>()V

    sput-object v0, Lcom/lewis/edit/ui/activity/-$$Lambda$2a6cpcM5xTEO_1aMYPzmfPrWPhY;->INSTANCE:Lcom/lewis/edit/ui/activity/-$$Lambda$2a6cpcM5xTEO_1aMYPzmfPrWPhY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
