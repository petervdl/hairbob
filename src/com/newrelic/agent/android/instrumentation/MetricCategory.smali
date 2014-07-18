.class public final enum Lcom/newrelic/agent/android/instrumentation/MetricCategory;
.super Ljava/lang/Enum;
.source "MetricCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newrelic/agent/android/instrumentation/MetricCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/newrelic/agent/android/instrumentation/MetricCategory;

.field public static final enum DATABASE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

.field public static final enum IMAGE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

.field public static final enum JSON:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

.field public static final enum NETWORK:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

.field public static final enum NONE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

.field public static final enum VIEW_LAYOUT:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

.field public static final enum VIEW_LOADING:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

.field private static final methodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/instrumentation/MetricCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, "None"

    invoke-direct {v0, v1, v4, v2}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NONE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 8
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    const-string/jumbo v1, "VIEW_LOADING"

    const-string/jumbo v2, "View Loading"

    invoke-direct {v0, v1, v5, v2}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->VIEW_LOADING:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 9
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    const-string/jumbo v1, "VIEW_LAYOUT"

    const-string/jumbo v2, "Layout"

    invoke-direct {v0, v1, v6, v2}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->VIEW_LAYOUT:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 10
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    const-string/jumbo v1, "DATABASE"

    const-string/jumbo v2, "Database"

    invoke-direct {v0, v1, v7, v2}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->DATABASE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 11
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    const-string/jumbo v1, "IMAGE"

    const-string/jumbo v2, "Images"

    invoke-direct {v0, v1, v8, v2}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->IMAGE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 12
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    const-string/jumbo v1, "JSON"

    const/4 v2, 0x5

    const-string/jumbo v3, "JSON"

    invoke-direct {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->JSON:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 13
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    const-string/jumbo v1, "NETWORK"

    const/4 v2, 0x6

    const-string/jumbo v3, "Network"

    invoke-direct {v0, v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NETWORK:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NONE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->VIEW_LOADING:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->VIEW_LAYOUT:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->DATABASE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->IMAGE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->JSON:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NETWORK:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->$VALUES:[Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 16
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory$1;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/MetricCategory$1;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->methodMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "categoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->categoryName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static categoryForMethod(Ljava/lang/String;)Lcom/newrelic/agent/android/instrumentation/MetricCategory;
    .registers 5
    .param p0, "fullMethodName"    # Ljava/lang/String;

    .prologue
    .line 29
    if-nez p0, :cond_5

    .line 30
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NONE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 40
    :cond_4
    :goto_4
    return-object v0

    .line 32
    :cond_5
    const/4 v2, 0x0

    .line 33
    .local v2, "methodName":Ljava/lang/String;
    const-string/jumbo v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 34
    .local v1, "hashIndex":I
    if-ltz v1, :cond_15

    .line 35
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    :cond_15
    sget-object v3, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->methodMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 38
    .local v0, "category":Lcom/newrelic/agent/android/instrumentation/MetricCategory;
    if-nez v0, :cond_4

    .line 39
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NONE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/instrumentation/MetricCategory;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    return-object v0
.end method

.method public static values()[Lcom/newrelic/agent/android/instrumentation/MetricCategory;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->$VALUES:[Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    invoke-virtual {v0}, [Lcom/newrelic/agent/android/instrumentation/MetricCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    return-object v0
.end method


# virtual methods
.method public getCategoryName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->categoryName:Ljava/lang/String;

    return-object v0
.end method
