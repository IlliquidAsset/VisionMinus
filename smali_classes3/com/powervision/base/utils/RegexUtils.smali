.class public Lcom/powervision/base/utils/RegexUtils;
.super Ljava/lang/Object;
.source "RegexUtils.java"


# static fields
.field public static APK:Ljava/lang/String; = "^(.*)\\.(apk)$"

.field public static CHINESE:Ljava/lang/String; = "[\\u4e00-\\u9fa5]"

.field public static DOC:Ljava/lang/String; = "^(.*)\\.(doc|docx)"

.field public static final EMAIL:Ljava/lang/String; = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

.field public static final EMAIL_OR_PHONE:Ljava/lang/String; = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}|1[3456789]{1}[\\d]{9}"

.field public static FLOAT:Ljava/lang/String; = "^[+|-]?\\d*\\.?\\d*$"

.field public static IMG:Ljava/lang/String; = "^(.*)\\.(jpg|bmp|png|gif|jpeg|psd)"

.field public static MUSIC:Ljava/lang/String; = "^(.*)\\.(aac|vorbis|flac|mp3|mp2|wma)$"

.field public static NOTE_ITEM:Ljava/lang/String; = "\\n\\s*\\r"

.field public static NUMBER_LETTER:Ljava/lang/String; = "[a-zA-Z0-9]*"

.field public static PDF:Ljava/lang/String; = "^(.*)\\.(pdf)"

.field public static final PHONE:Ljava/lang/String; = "1[3456789]{1}[\\d]{9}"

.field public static PPT:Ljava/lang/String; = "^(.*)\\.(ppt|pptx)"

.field public static PSN:Ljava/lang/String; = "[\\d]{3}[A-Za-z]{4}[\\d]{7}"

.field public static SQL:Ljava/lang/String; = "^(.*)\\.(sql|db)"

.field public static START_OR_END_NONE:Ljava/lang/String; = "^\\s*|\\s*"

.field public static TEXT:Ljava/lang/String; = "^(.*)\\.(txt|xml|html)$"

.field public static final TOPIC:Ljava/lang/String; = ".*(#.*#).*"

.field public static final URL:Ljava/lang/String; = "/^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$/"

.field public static final USER_PASSWORD:Ljava/lang/String; = "^.{6,32}$"

.field public static VCF:Ljava/lang/String; = "^(.*)\\.(vcf)"

.field public static VIDEO:Ljava/lang/String; = "^(.*)\\.(mpeg-4|h.264|h.265|rmvb|xvid|vp6|h.263|mpeg-1|mpeg-2|avi|mov|mkv|flv|3gp|3g2|asf|wmv|mp4|m4v|tp|ts|mtp|m2t)$"

.field public static XLS:Ljava/lang/String; = "^(.*)\\.(xls|xlsx)"

.field public static ZIP:Ljava/lang/String; = "^(.*)\\.(zip|rar|7z)$"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ecodingPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "1[3456789]{1}[\\d]{9}"

    .line 173
    invoke-static {v0, p0}, Lcom/powervision/base/utils/RegexUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 174
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "****"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static find(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 144
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 145
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static findResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 158
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 159
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findTopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".*(#.*#).*"

    const-string v1, "$1"

    .line 188
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 131
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 132
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
