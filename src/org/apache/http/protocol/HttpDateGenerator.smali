.class public Lorg/apache/http/protocol/HttpDateGenerator;
.super Ljava/lang/Object;
.source "HttpDateGenerator.java"


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field public static final GMT:Ljava/util/TimeZone;


# instance fields
.field private dateAsLong:J
    .annotation build Lorg/apache/http/annotation/GuardedBy;
    .end annotation
.end field

.field private dateAsText:Ljava/lang/String;
    .annotation build Lorg/apache/http/annotation/GuardedBy;
    .end annotation
.end field

.field private final dateformat:Ljava/text/DateFormat;
    .annotation build Lorg/apache/http/annotation/GuardedBy;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HttpDateGenerator;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateAsLong:J

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateAsText:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateformat:Ljava/text/DateFormat;

    .line 64
    iget-object v0, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateformat:Ljava/text/DateFormat;

    sget-object v1, Lorg/apache/http/protocol/HttpDateGenerator;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    return-void
.end method
