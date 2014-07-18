.class public Lcom/airbnb/android/contentproviders/SearchInfoProvider;
.super Landroid/content/ContentProvider;
.source "SearchInfoProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = ".contentproviders.SearchInfoProvider"

.field public static final CONTENT_TYPE_MULTI:Ljava/lang/String; = "vnd.airbnb.cursor.dir/vnd.airbnb.search.searchinfo"

.field public static final CONTENT_TYPE_SINGLE:Ljava/lang/String; = "vnd.airbnb.cursor.item/vnd.airbnb.search.searchinfo"

.field public static final CONTENT_URI:Ljava/lang/String; = "content://.contentproviders.SearchInfoProvider/search_info"

.field private static final ITEMS_MULTI:I = 0x1

.field private static final ITEM_SINGLE:I = 0x2

.field private static final LIMIT:Ljava/lang/String; = "10"

.field public static final URI_SEARCH_INFO:Landroid/net/Uri;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHandler:Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 30
    const-string/jumbo v0, "content://.contentproviders.SearchInfoProvider/search_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->URI_SEARCH_INFO:Landroid/net/Uri;

    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 43
    sget-object v0, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, ".contentproviders.SearchInfoProvider"

    const-string/jumbo v2, "search_info"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, ".contentproviders.SearchInfoProvider"

    const-string/jumbo v2, "search_info/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 77
    sget-object v0, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_23
    const-string/jumbo v0, "vnd.airbnb.cursor.dir/vnd.airbnb.search.searchinfo"

    .line 81
    :goto_26
    return-object v0

    :pswitch_27
    const-string/jumbo v0, "vnd.airbnb.cursor.item/vnd.airbnb.search.searchinfo"

    goto :goto_26

    .line 77
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->mDbHandler:Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v11, 0x0

    .line 56
    .local v11, "result":Landroid/database/Cursor;
    sget-object v0, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_80

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_13
    iget-object v0, p0, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->mDbHandler:Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    invoke-virtual {v0}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "search_info"

    sget-object v2, Lcom/airbnb/android/models/SearchInfo$SearchInfoContract;->FIELDS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "10"

    instance-of v7, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_3f

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 69
    :goto_2f
    if-eqz v11, :cond_3e

    .line 70
    invoke-virtual {p0}, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->URI_SEARCH_INFO:Landroid/net/Uri;

    invoke-interface {v11, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 72
    :cond_3e
    return-object v11

    .line 58
    :cond_3f
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v7, p5

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_2f

    .line 61
    :pswitch_48
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 62
    .local v9, "id":J
    iget-object v0, p0, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->mDbHandler:Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    invoke-virtual {v0}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "search_info"

    sget-object v2, Lcom/airbnb/android/models/SearchInfo$SearchInfoContract;->FIELDS:[Ljava/lang/String;

    const-string/jumbo v3, "_id IS ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    instance-of v7, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_76

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 65
    :goto_75
    goto :goto_2f

    .line 62
    :cond_76
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v7, p5

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_75

    .line 56
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_13
        :pswitch_48
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
