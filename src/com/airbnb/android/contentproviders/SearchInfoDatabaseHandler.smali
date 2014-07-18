.class public Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SearchInfoDatabaseHandler.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "SearchHistoryDatabase"

.field public static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static singleton:Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string/jumbo v0, "SearchHistoryDatabase"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->singleton:Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    invoke-direct {v0, p0}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->singleton:Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    .line 26
    :cond_b
    sget-object v0, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->singleton:Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    return-object v0
.end method

.method private notifyProviderOnSearchInfoChange()V
    .registers 5

    .prologue
    .line 102
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->URI_SEARCH_INFO:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 103
    return-void
.end method


# virtual methods
.method public declared-synchronized getSearchInfo(J)Lcom/airbnb/android/models/SearchInfo;
    .registers 16
    .param p1, "id"    # J

    .prologue
    const/4 v11, 0x0

    .line 49
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "search_info"

    sget-object v2, Lcom/airbnb/android/models/SearchInfo$SearchInfoContract;->FIELDS:[Ljava/lang/String;

    const-string/jumbo v3, "_id IS ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v12, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v12, :cond_2e

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 52
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_24
    if-eqz v10, :cond_2c

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_4c

    move-result v0

    if-eqz v0, :cond_35

    .line 62
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-object v11

    .line 49
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_2e
    :try_start_2e
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_24

    .line 55
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_35
    const/4 v11, 0x0

    .line 56
    .local v11, "item":Lcom/airbnb/android/models/SearchInfo;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 57
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v9

    .line 58
    .local v9, "context":Landroid/content/Context;
    new-instance v11, Lcom/airbnb/android/models/SearchInfo;

    .end local v11    # "item":Lcom/airbnb/android/models/SearchInfo;
    invoke-direct {v11, v9}, Lcom/airbnb/android/models/SearchInfo;-><init>(Landroid/content/Context;)V

    .line 59
    .restart local v11    # "item":Lcom/airbnb/android/models/SearchInfo;
    invoke-virtual {v11, v10, v9}, Lcom/airbnb/android/models/SearchInfo;->updateFromCursor(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 61
    .end local v9    # "context":Landroid/content/Context;
    :cond_48
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_4c

    goto :goto_2c

    .line 49
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "item":Lcom/airbnb/android/models/SearchInfo;
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    const-string/jumbo v0, "CREATE TABLE search_info(_id INTEGER PRIMARY KEY AUTOINCREMENT,query TEXT NOT NULL DEFAULT \'\',checkin_date LONG,checkout_date LONG,num_guests INTEGER,min_price INTEGER,max_price INTEGER,num_beds INTEGER,num_bedrooms INTEGER,num_bathrooms INTEGER,private_room INTEGER,shared_room INTEGER,entire_place INTEGER,amenities TEXT,instant_book INTEGER,currency TEXT,db_version INTEGER,last_update LONG)"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_a
    return-void

    .line 35
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_b
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 41
    sget-object v0, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string/jumbo v1, "DROP TABLE IF EXISTS search_info"

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_39

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    :goto_35
    invoke-virtual {p0, p1}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    return-void

    :cond_39
    move-object v0, p1

    .line 43
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_35
.end method

.method public declared-synchronized removeSearchInfo(Lcom/airbnb/android/models/SearchInfo;)I
    .registers 10
    .param p1, "searchInfo"    # Lcom/airbnb/android/models/SearchInfo;

    .prologue
    .line 91
    monitor-enter p0

    const/4 v0, -0x1

    .line 92
    .local v0, "result":I
    :try_start_2
    invoke-virtual {p1}, Lcom/airbnb/android/models/SearchInfo;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_2c

    .line 93
    invoke-virtual {p0}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "search_info"

    const-string/jumbo v3, "_id IS ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/models/SearchInfo;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    instance-of v5, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_34

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 95
    :cond_2c
    :goto_2c
    const/4 v1, -0x1

    if-le v0, v1, :cond_32

    .line 96
    invoke-direct {p0}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->notifyProviderOnSearchInfoChange()V
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_3b

    .line 98
    :cond_32
    monitor-exit p0

    return v0

    .line 93
    :cond_34
    :try_start_34
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3b

    move-result v0

    goto :goto_2c

    .line 91
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized saveSearchInfo(Lcom/airbnb/android/models/SearchInfo;)Z
    .registers 17
    .param p1, "searchInfo"    # Lcom/airbnb/android/models/SearchInfo;

    .prologue
    const-wide/16 v13, -0x1

    .line 66
    monitor-enter p0

    const/4 v5, 0x0

    .line 67
    .local v5, "success":Z
    const/4 v4, 0x0

    .line 68
    .local v4, "result":I
    :try_start_5
    invoke-virtual {p0}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 70
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/SearchInfo;->getId()J

    move-result-wide v6

    cmp-long v6, v6, v13

    if-lez v6, :cond_32

    .line 71
    const-string/jumbo v7, "search_info"

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/SearchInfo;->getContent()Landroid/content/ContentValues;

    move-result-object v8

    const-string/jumbo v9, "_id IS ?"

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/SearchInfo;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    instance-of v6, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_3c

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    :goto_31
    add-int/2addr v4, v6

    .line 75
    :cond_32
    if-lez v4, :cond_45

    .line 76
    const/4 v5, 0x1

    .line 84
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_35
    :goto_35
    if-eqz v5, :cond_3a

    .line 85
    invoke-direct {p0}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->notifyProviderOnSearchInfoChange()V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_67

    .line 87
    :cond_3a
    monitor-exit p0

    return v5

    .line 71
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3c
    :try_start_3c
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_31

    .line 78
    :cond_45
    const-string/jumbo v6, "search_info"

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/models/SearchInfo;->getContent()Landroid/content/ContentValues;

    move-result-object v8

    instance-of v9, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_60

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 79
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "id":J
    :goto_55
    cmp-long v6, v2, v13

    if-lez v6, :cond_35

    .line 80
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/models/SearchInfo;->setId(J)V

    .line 81
    const/4 v5, 0x1

    goto :goto_35

    .line 78
    .end local v2    # "id":J
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_60
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1, v6, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_65
    .catchall {:try_start_3c .. :try_end_65} :catchall_67

    move-result-wide v2

    goto :goto_55

    .line 66
    :catchall_67
    move-exception v6

    monitor-exit p0

    throw v6
.end method
