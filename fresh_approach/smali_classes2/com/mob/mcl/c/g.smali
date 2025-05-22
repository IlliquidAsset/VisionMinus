.class public Lcom/mob/mcl/c/g;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:I

.field public final b:I

.field public c:J

.field public d:Ljava/lang/String;


# direct methods
.method constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/mob/mcl/c/g;->a:I

    .line 4
    iput p2, p0, Lcom/mob/mcl/c/g;->b:I

    .line 5
    iput-wide p3, p0, Lcom/mob/mcl/c/g;->c:J

    .line 6
    iput-object p5, p0, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    move-object v1, p0

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/g;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/mob/mcl/c/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_5

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const/16 v1, 0x270f

    if-le v6, v1, :cond_1

    :goto_1
    move-object v1, v3

    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    .line 13
    new-instance v1, Lcom/mob/mcl/c/g;

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/mob/mcl/c/g;-><init>(IIJLjava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_3

    .line 14
    iget v2, v1, Lcom/mob/mcl/c/g;->a:I

    if-lez v2, :cond_3

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v2, v4, :cond_2

    goto :goto_3

    .line 18
    :cond_2
    iget v2, v1, Lcom/mob/mcl/c/g;->a:I

    new-array v2, v2, [B

    .line 19
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 20
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v1, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    :cond_3
    move-object v3, v1

    :goto_3
    if-nez v3, :cond_4

    goto :goto_4

    .line 21
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_4
    return-object v0
.end method
