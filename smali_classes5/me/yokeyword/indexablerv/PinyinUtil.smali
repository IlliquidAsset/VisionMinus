.class public Lme/yokeyword/indexablerv/PinyinUtil;
.super Ljava/lang/Object;
.source "PinyinUtil.java"


# static fields
.field private static final PATTERN_LETTER:Ljava/lang/String; = "^[a-zA-Z].*+"

.field private static final PATTERN_POLYPHONE:Ljava/lang/String; = "^#[a-zA-Z]+#.+"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static gePolyphoneInitial(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPingYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 19
    :cond_0
    invoke-static {p0, v0}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getPolyphoneRealHanzi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "#"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 46
    aget-object p0, p0, v0

    return-object p0
.end method

.method static getPolyphoneRealPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "#"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 41
    aget-object p0, p0, v0

    return-object p0
.end method

.method static matchingLetter(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[a-zA-Z].*+"

    .line 28
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static matchingPolyphone(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^#[a-zA-Z]+#.+"

    .line 32
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
