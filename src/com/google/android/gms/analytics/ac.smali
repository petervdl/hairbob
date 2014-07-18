.class Lcom/google/android/gms/analytics/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/ac$a;
    }
.end annotation


# static fields
.field private static final wM:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final tZ:Lcom/google/android/gms/analytics/e;

.field private ur:Lcom/google/android/gms/analytics/i;

.field private final wN:Lcom/google/android/gms/analytics/ac$a;

.field private volatile wO:Lcom/google/android/gms/analytics/n;

.field private final wP:Ljava/lang/String;

.field private wQ:Lcom/google/android/gms/analytics/ab;

.field private wR:J

.field private final wS:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hits2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "hit_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "hit_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "hit_string"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "hit_app_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/ac;->wM:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "google_analytics_v4.db"

    const/16 v1, 0x7d0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/analytics/ac;-><init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ac;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/analytics/ac;->wP:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/ac;->tZ:Lcom/google/android/gms/analytics/e;

    new-instance v0, Lcom/google/android/gms/analytics/ac$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/ac$1;-><init>(Lcom/google/android/gms/analytics/ac;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ac;->ur:Lcom/google/android/gms/analytics/i;

    new-instance v0, Lcom/google/android/gms/analytics/ac$a;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ac;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->wP:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/analytics/ac$a;-><init>(Lcom/google/android/gms/analytics/ac;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ac;->wN:Lcom/google/android/gms/analytics/ac$a;

    new-instance v0, Lcom/google/android/gms/analytics/ah;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/ah;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ac;->wO:Lcom/google/android/gms/analytics/n;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/ac;->wR:J

    iput p4, p0, Lcom/google/android/gms/analytics/ac;->wS:I

    return-void
.end method

.method private S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->wN:Lcom/google/android/gms/analytics/ac$a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ac$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/ac;)Lcom/google/android/gms/analytics/i;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->ur:Lcom/google/android/gms/analytics/i;

    return-object v0
.end method

.method private a(Ljava/util/Map;JLjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v1, "Error opening database for putHit"

    invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_a

    :goto_9
    return-void

    :cond_a
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "hit_string"

    invoke-static {p1}, Lcom/google/android/gms/analytics/ac;->v(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "hit_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v3, 0x0

    const-string/jumbo v1, "AppUID"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    :try_start_2e
    const-string/jumbo v1, "AppUID"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_3a} :catch_7f

    move-result-wide v3

    :cond_3b
    :goto_3b
    const-string/jumbo v1, "hit_app_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez p4, :cond_4a

    const-string/jumbo p4, "http://www.google-analytics.com/collect"

    :cond_4a
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_57

    const-string/jumbo v1, "Empty path: not sending hit"

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    goto :goto_9

    :cond_57
    const-string/jumbo v1, "hit_url"

    invoke-virtual {v5, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5d
    const-string/jumbo v3, "hits2"

    const/4 v4, 0x0

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_77

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_68
    iget-object v1, p0, Lcom/google/android/gms/analytics/ac;->tZ:Lcom/google/android/gms/analytics/e;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gms/analytics/e;->s(Z)V
    :try_end_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_6e} :catch_6f

    goto :goto_9

    :catch_6f
    move-exception v1

    const-string/jumbo v1, "Error storing hit"

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    goto :goto_9

    :cond_77
    :try_start_77
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v3, v4, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_77 .. :try_end_7e} :catch_6f

    goto :goto_68

    :catch_7f
    move-exception v1

    goto :goto_3b
.end method

.method private a(Ljava/util/Map;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/fe;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "&_v"

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2e

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fe;

    const-string/jumbo v3, "appendVersion"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/ac;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->wP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/ac;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dm()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->do()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/analytics/ac;->wS:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_3d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/ac;->A(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Store full, deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hits to make room."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/ac;->a([Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method static synthetic dp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/ac;->wM:Ljava/lang/String;

    return-object v0
.end method

.method static v(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/analytics/y;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/y;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_4d
    const-string/jumbo v0, "&"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method A(I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_10

    const-string/jumbo v0, "Invalid maxHits specified. Skipping"

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    move-object v0, v9

    :goto_f
    return-object v0

    :cond_10
    const-string/jumbo v0, "Error opening database for peekHitIds."

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1b

    move-object v0, v9

    goto :goto_f

    :cond_1b
    :try_start_1b
    const-string/jumbo v1, "hits2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "hit_id"

    aput-object v12, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    instance-of v11, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v11, :cond_66

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_46} :catch_6d
    .catchall {:try_start_1b .. :try_end_46} :catchall_90

    move-result-object v1

    :goto_47
    :try_start_47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_4d
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_5c} :catch_9a
    .catchall {:try_start_47 .. :try_end_5c} :catchall_97

    move-result v0

    if-nez v0, :cond_4d

    :cond_5f
    if-eqz v1, :cond_64

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_64
    :goto_64
    move-object v0, v9

    goto :goto_f

    :cond_66
    :try_start_66
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_66 .. :try_end_6b} :catch_6d
    .catchall {:try_start_66 .. :try_end_6b} :catchall_90

    move-result-object v1

    goto :goto_47

    :catch_6d
    move-exception v0

    move-object v1, v10

    :goto_6f
    :try_start_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in peekHits fetching hitIds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_6f .. :try_end_8a} :catchall_97

    if-eqz v1, :cond_64

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_64

    :catchall_90
    move-exception v0

    :goto_91
    if-eqz v10, :cond_96

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_96
    throw v0

    :catchall_97
    move-exception v0

    move-object v10, v1

    goto :goto_91

    :catch_9a
    move-exception v0

    goto :goto_6f
.end method

.method public B(I)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/x;",
            ">;"
        }
    .end annotation

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "Error opening database for peekHits"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_13

    move-object/from16 v1, v19

    :cond_12
    :goto_12
    return-object v1

    :cond_13
    const/16 v20, 0x0

    :try_start_15
    const-string/jumbo v2, "hits2"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "hit_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "hit_time"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "%s ASC"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "hit_id"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    instance-of v10, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_ea

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_46} :catch_ff
    .catchall {:try_start_15 .. :try_end_46} :catchall_127

    move-result-object v11

    :goto_47
    :try_start_47
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_4c} :catch_1b7
    .catchall {:try_start_47 .. :try_end_4c} :catchall_1ad

    :try_start_4c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6b

    :cond_52
    new-instance v2, Lcom/google/android/gms/analytics/x;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/analytics/x;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_68} :catch_1be
    .catchall {:try_start_4c .. :try_end_68} :catchall_1ad

    move-result v2

    if-nez v2, :cond_52

    :cond_6b
    if-eqz v11, :cond_70

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_70
    const/4 v12, 0x0

    :try_start_71
    const-string/jumbo v2, "hits2"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "hit_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "hit_string"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "hit_url"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "%s ASC"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "hit_id"

    aput-object v14, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    instance-of v13, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v13, :cond_12e

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_71 .. :try_end_a8} :catch_1ab
    .catchall {:try_start_71 .. :try_end_a8} :catchall_1a1

    move-result-object v2

    :goto_a9
    :try_start_a9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e2

    move v3, v12

    :goto_b0
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    if-lez v1, :cond_136

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/x;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/analytics/x;->Q(Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/x;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/analytics/x;->R(Ljava/lang/String;)V

    :goto_da
    add-int/lit8 v1, v3, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a9 .. :try_end_df} :catch_155
    .catchall {:try_start_a9 .. :try_end_df} :catchall_1a8

    move-result v3

    if-nez v3, :cond_1c4

    :cond_e2
    if-eqz v2, :cond_e7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e7
    move-object v1, v10

    goto/16 :goto_12

    :cond_ea
    :try_start_ea
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-static/range {v10 .. v18}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_fc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ea .. :try_end_fc} :catch_ff
    .catchall {:try_start_ea .. :try_end_fc} :catchall_127

    move-result-object v11

    goto/16 :goto_47

    :catch_ff
    move-exception v1

    move-object v2, v1

    move-object/from16 v3, v20

    move-object/from16 v1, v19

    :goto_105
    :try_start_105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in peekHits fetching hitIds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
    :try_end_120
    .catchall {:try_start_105 .. :try_end_120} :catchall_1b2

    if-eqz v3, :cond_12

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_12

    :catchall_127
    move-exception v1

    :goto_128
    if-eqz v20, :cond_12d

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_12d
    throw v1

    :cond_12e
    :try_start_12e
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v1 .. v9}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_133
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12e .. :try_end_133} :catch_1ab
    .catchall {:try_start_12e .. :try_end_133} :catchall_1a1

    move-result-object v2

    goto/16 :goto_a9

    :cond_136
    :try_start_136
    const-string/jumbo v4, "HitString for hitId %d too large.  Hit will be deleted."

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/x;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/x;->dg()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
    :try_end_154
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_136 .. :try_end_154} :catch_155
    .catchall {:try_start_136 .. :try_end_154} :catchall_1a8

    goto :goto_da

    :catch_155
    move-exception v1

    move-object v11, v2

    :goto_157
    :try_start_157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in peekHits fetching hitString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_194

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/x;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/x;->df()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_18f
    .catchall {:try_start_157 .. :try_end_18f} :catchall_1a1

    move-result v5

    if-eqz v5, :cond_19d

    if-eqz v3, :cond_19c

    :cond_194
    if-eqz v11, :cond_199

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_199
    move-object v1, v2

    goto/16 :goto_12

    :cond_19c
    const/4 v3, 0x1

    :cond_19d
    :try_start_19d
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a0
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_1a1

    goto :goto_17c

    :catchall_1a1
    move-exception v1

    :goto_1a2
    if-eqz v11, :cond_1a7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1a7
    throw v1

    :catchall_1a8
    move-exception v1

    move-object v11, v2

    goto :goto_1a2

    :catch_1ab
    move-exception v1

    goto :goto_157

    :catchall_1ad
    move-exception v1

    move-object/from16 v20, v11

    goto/16 :goto_128

    :catchall_1b2
    move-exception v1

    move-object/from16 v20, v3

    goto/16 :goto_128

    :catch_1b7
    move-exception v1

    move-object v2, v1

    move-object v3, v11

    move-object/from16 v1, v19

    goto/16 :goto_105

    :catch_1be
    move-exception v1

    move-object v2, v1

    move-object v3, v11

    move-object v1, v10

    goto/16 :goto_105

    :cond_1c4
    move v3, v1

    goto/16 :goto_b0
.end method

.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/fe;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->dn()I

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ac;->dm()V

    invoke-direct {p0, p1, p5}, Lcom/google/android/gms/analytics/ac;->a(Ljava/util/Map;Ljava/util/Collection;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/analytics/ac;->a(Ljava/util/Map;JLjava/lang/String;)V

    return-void
.end method

.method a([Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_e

    :cond_7
    const-string/jumbo v0, "Empty hitIds passed to deleteHits."

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    const-string/jumbo v0, "Error opening database for deleteHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string/jumbo v3, "HIT_ID in (%s)"

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, ","

    array-length v6, p1

    const-string/jumbo v7, "?"

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_31
    const-string/jumbo v4, "hits2"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_61

    invoke-virtual {v0, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_3b
    iget-object v3, p0, Lcom/google/android/gms/analytics/ac;->tZ:Lcom/google/android/gms/analytics/e;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->do()I

    move-result v0

    if-nez v0, :cond_67

    move v0, v1

    :goto_44
    invoke-interface {v3, v0}, Lcom/google/android/gms/analytics/e;->s(Z)V
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_47} :catch_48

    goto :goto_d

    :catch_48
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error deleting hits "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    goto :goto_d

    :cond_61
    :try_start_61
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v4, v3, p1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_66
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_61 .. :try_end_66} :catch_48

    goto :goto_3b

    :cond_67
    move v0, v2

    goto :goto_44
.end method

.method b(Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/x;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_8
    const-string/jumbo v0, "Empty/Null collection passed to deleteHits."

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/x;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/x;->dg()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_1b

    :cond_35
    invoke-virtual {p0, v3}, Lcom/google/android/gms/analytics/ac;->a([Ljava/lang/String;)V

    goto :goto_e
.end method

.method public cl()V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string/jumbo v2, "Dispatch running..."

    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->wO:Lcom/google/android/gms/analytics/n;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/n;->cx()Z

    move-result v2

    if-nez v2, :cond_11

    :goto_10
    return-void

    :cond_11
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/ac;->B(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string/jumbo v1, "...nothing to dispatch"

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/ac;->tZ:Lcom/google/android/gms/analytics/e;

    invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/e;->s(Z)V

    goto :goto_10

    :cond_29
    iget-object v3, p0, Lcom/google/android/gms/analytics/ac;->wQ:Lcom/google/android/gms/analytics/ab;

    if-nez v3, :cond_37

    new-instance v3, Lcom/google/android/gms/analytics/ab;

    const-string/jumbo v4, "_t=dispatch&_v=ma4.0.2"

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/analytics/ab;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/google/android/gms/analytics/ac;->wQ:Lcom/google/android/gms/analytics/ab;

    :cond_37
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->do()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v3, v4, :cond_9c

    :goto_41
    iget-object v3, p0, Lcom/google/android/gms/analytics/ac;->wO:Lcom/google/android/gms/analytics/n;

    iget-object v4, p0, Lcom/google/android/gms/analytics/ac;->wQ:Lcom/google/android/gms/analytics/ab;

    invoke-interface {v3, v2, v4, v0}, Lcom/google/android/gms/analytics/n;->a(Ljava/util/List;Lcom/google/android/gms/analytics/ab;Z)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " hits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/ac;->b(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_9e

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->do()I

    move-result v0

    if-lez v0, :cond_9e

    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    goto/16 :goto_10

    :cond_9c
    move v0, v1

    goto :goto_41

    :cond_9e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ac;->wQ:Lcom/google/android/gms/analytics/ab;

    goto/16 :goto_10
.end method

.method public cm()Lcom/google/android/gms/analytics/n;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->wO:Lcom/google/android/gms/analytics/n;

    return-object v0
.end method

.method dn()I
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->ur:Lcom/google/android/gms/analytics/i;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/analytics/ac;->wR:J

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_13

    :cond_12
    :goto_12
    return v2

    :cond_13
    iput-wide v3, p0, Lcom/google/android/gms/analytics/ac;->wR:J

    const-string/jumbo v0, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/analytics/ac;->ur:Lcom/google/android/gms/analytics/i;

    invoke-interface {v3}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    sub-long/2addr v3, v5

    const-string/jumbo v5, "hits2"

    const-string/jumbo v6, "HIT_TIME < ?"

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_4d

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_40
    iget-object v3, p0, Lcom/google/android/gms/analytics/ac;->tZ:Lcom/google/android/gms/analytics/e;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->do()I

    move-result v4

    if-nez v4, :cond_54

    :goto_48
    invoke-interface {v3, v1}, Lcom/google/android/gms/analytics/e;->s(Z)V

    move v2, v0

    goto :goto_12

    :cond_4d
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v5, v6, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_40

    :cond_54
    move v1, v2

    goto :goto_48
.end method

.method do()I
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return v1

    :cond_c
    :try_start_c
    const-string/jumbo v3, "SELECT COUNT(*) from hits2"

    const/4 v4, 0x0

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_2b

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_17} :catch_32
    .catchall {:try_start_c .. :try_end_17} :catchall_41

    move-result-object v2

    :goto_18
    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_22} :catch_4c
    .catchall {:try_start_18 .. :try_end_22} :catchall_41

    move-result-wide v0

    long-to-int v0, v0

    :goto_24
    if-eqz v2, :cond_29

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_29
    :goto_29
    move v1, v0

    goto :goto_b

    :cond_2b
    :try_start_2b
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_30} :catch_32
    .catchall {:try_start_2b .. :try_end_30} :catchall_41

    move-result-object v2

    goto :goto_18

    :catch_32
    move-exception v0

    move-object v0, v2

    :goto_34
    :try_start_34
    const-string/jumbo v2, "Error getting numStoredHits"

    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_48

    if-eqz v0, :cond_4f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_29

    :catchall_41
    move-exception v0

    :goto_42
    if-eqz v2, :cond_47

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v0

    :catchall_48
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_42

    :catch_4c
    move-exception v0

    move-object v0, v2

    goto :goto_34

    :cond_4f
    move v0, v1

    goto :goto_29

    :cond_51
    move v0, v1

    goto :goto_24
.end method

.method public l(J)V
    .registers 10

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "Error opening database for clearHits"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_28

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_2f

    const-string/jumbo v3, "hits2"

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_29

    invoke-virtual {v0, v3, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1c
    iget-object v3, p0, Lcom/google/android/gms/analytics/ac;->tZ:Lcom/google/android/gms/analytics/e;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->do()I

    move-result v0

    if-nez v0, :cond_4f

    move v0, v1

    :goto_25
    invoke-interface {v3, v0}, Lcom/google/android/gms/analytics/e;->s(Z)V

    :cond_28
    return-void

    :cond_29
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v3, v5, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1c

    :cond_2f
    new-array v3, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, "hits2"

    const-string/jumbo v5, "hit_app_id = ?"

    instance-of v6, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_49

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1c

    :cond_49
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v4, v5, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1c

    :cond_4f
    move v0, v2

    goto :goto_25
.end method
