.class public Lcom/umeng/analytics/pro/bh;
.super Lcom/umeng/analytics/pro/bo;
.source "TApplicationException.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field private static final j:Lcom/umeng/analytics/pro/cm;

.field private static final k:Lcom/umeng/analytics/pro/cc;

.field private static final l:Lcom/umeng/analytics/pro/cc;

.field private static final m:J = 0x1L


# instance fields
.field protected i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/umeng/analytics/pro/cm;

    const-string v1, "TApplicationException"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/cm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/pro/bh;->j:Lcom/umeng/analytics/pro/cm;

    .line 35
    new-instance v0, Lcom/umeng/analytics/pro/cc;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bh;->k:Lcom/umeng/analytics/pro/cc;

    .line 36
    new-instance v0, Lcom/umeng/analytics/pro/cc;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bh;->l:Lcom/umeng/analytics/pro/cc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bo;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/umeng/analytics/pro/bh;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bo;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/umeng/analytics/pro/bh;->i:I

    .line 57
    iput p1, p0, Lcom/umeng/analytics/pro/bh;->i:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/bo;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lcom/umeng/analytics/pro/bh;->i:I

    .line 62
    iput p1, p0, Lcom/umeng/analytics/pro/bh;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bo;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/umeng/analytics/pro/bh;->i:I

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/ch;)Lcom/umeng/analytics/pro/bh;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ch;->j()Lcom/umeng/analytics/pro/cm;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ch;->l()Lcom/umeng/analytics/pro/cc;

    move-result-object v2

    .line 82
    iget-byte v3, v2, Lcom/umeng/analytics/pro/cc;->b:B

    if-nez v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ch;->k()V

    .line 108
    new-instance p0, Lcom/umeng/analytics/pro/bh;

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/bh;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 85
    :cond_0
    iget-short v3, v2, Lcom/umeng/analytics/pro/cc;->c:S

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 101
    iget-byte v2, v2, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p0, v2}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto :goto_1

    .line 94
    :cond_1
    iget-byte v3, v2, Lcom/umeng/analytics/pro/cc;->b:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ch;->w()I

    move-result v1

    goto :goto_1

    .line 97
    :cond_2
    iget-byte v2, v2, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p0, v2}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto :goto_1

    .line 87
    :cond_3
    iget-byte v3, v2, Lcom/umeng/analytics/pro/cc;->b:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ch;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_4
    iget-byte v2, v2, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p0, v2}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    .line 104
    :goto_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ch;->m()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/umeng/analytics/pro/bh;->i:I

    return v0
.end method

.method public b(Lcom/umeng/analytics/pro/ch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/umeng/analytics/pro/bh;->j:Lcom/umeng/analytics/pro/cm;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cm;)V

    .line 113
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bh;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/umeng/analytics/pro/bh;->k:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 115
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bh;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 118
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/bh;->l:Lcom/umeng/analytics/pro/cc;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 119
    iget v0, p0, Lcom/umeng/analytics/pro/bh;->i:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(I)V

    .line 120
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 121
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->d()V

    .line 122
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->b()V

    return-void
.end method
