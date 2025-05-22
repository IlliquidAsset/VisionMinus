.class public abstract Lcom/mob/mobapm/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Lcom/mob/tools/network/OnReadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected abstract b()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public c()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mob/tools/network/ByteCounterInputStream;

    invoke-virtual {p0}, Lcom/mob/mobapm/internal/b;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/network/ByteCounterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    iget-object v1, p0, Lcom/mob/mobapm/internal/b;->b:Lcom/mob/tools/network/OnReadListener;

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteCounterInputStream;->setOnInputStreamReadListener(Lcom/mob/tools/network/OnReadListener;)V

    .line 3
    iget-wide v1, p0, Lcom/mob/mobapm/internal/b;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/network/ByteCounterInputStream;->skip(J)J

    :cond_0
    return-object v0
.end method
