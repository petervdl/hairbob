.class Lcom/google/android/gms/analytics/ac$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic wT:Lcom/google/android/gms/analytics/ac;

.field private wU:Z

.field private wV:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/ac;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/analytics/ac$a;->wT:Lcom/google/android/gms/analytics/ac;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/ac$a;->wV:J

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8

    const/4 v1, 0x0

    const-string/jumbo v2, "SELECT * FROM hits2 WHERE 0"

    const/4 v3, 0x0

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_22

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_d
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :try_start_12
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_17
    array-length v5, v4

    if-ge v2, v5, :cond_2a

    aget-object v5, v4, v2

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_5a

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_d

    :cond_2a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string/jumbo v0, "hit_id"

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string/jumbo v0, "hit_url"

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string/jumbo v0, "hit_string"

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string/jumbo v0, "hit_time"

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_51
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Database column missing"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5a
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5f
    const-string/jumbo v0, "hit_app_id"

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const/4 v0, 0x1

    :goto_69
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7a

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Database has extra columns"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    move v0, v1

    goto :goto_69

    :cond_7a
    if-eqz v0, :cond_86

    const-string/jumbo v0, "ALTER TABLE hits2 ADD COLUMN hit_app_id"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_87

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_86
    :goto_86
    return-void

    :cond_87
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_86
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 14

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_2
    const-string/jumbo v2, "SQLITE_MASTER"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v3, v1

    const-string/jumbo v4, "name=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v1, p2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2d

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_22} :catch_36
    .catchall {:try_start_2 .. :try_end_22} :catchall_56

    move-result-object v2

    :goto_23
    :try_start_23
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_26} :catch_64
    .catchall {:try_start_23 .. :try_end_26} :catchall_5d

    move-result v1

    if-eqz v2, :cond_2c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2c
    :goto_2c
    return v1

    :cond_2d
    :try_start_2d
    move-object v0, p2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_34} :catch_36
    .catchall {:try_start_2d .. :try_end_34} :catchall_56

    move-result-object v2

    goto :goto_23

    :catch_36
    move-exception v1

    move-object v1, v10

    :goto_38
    :try_start_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error querying for table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_60

    if-eqz v1, :cond_54

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_54
    move v1, v9

    goto :goto_2c

    :catchall_56
    move-exception v1

    :goto_57
    if-eqz v10, :cond_5c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v1

    :catchall_5d
    move-exception v1

    move-object v10, v2

    goto :goto_57

    :catchall_60
    move-exception v2

    move-object v10, v1

    move-object v1, v2

    goto :goto_57

    :catch_64
    move-exception v1

    move-object v1, v2

    goto :goto_38
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ac$a;->wU:Z

    if-eqz v0, :cond_21

    iget-wide v0, p0, Lcom/google/android/gms/analytics/ac$a;->wV:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/analytics/ac$a;->wT:Lcom/google/android/gms/analytics/ac;

    invoke-static {v2}, Lcom/google/android/gms/analytics/ac;->a(Lcom/google/android/gms/analytics/ac;)Lcom/google/android/gms/analytics/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Database creation failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/ac$a;->wU:Z

    iget-object v1, p0, Lcom/google/android/gms/analytics/ac$a;->wT:Lcom/google/android/gms/analytics/ac;

    invoke-static {v1}, Lcom/google/android/gms/analytics/ac;->a(Lcom/google/android/gms/analytics/ac;)Lcom/google/android/gms/analytics/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/analytics/ac$a;->wV:J

    :try_start_31
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_34
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_34} :catch_3f

    move-result-object v0

    :goto_35
    if-nez v0, :cond_3b

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_3b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/ac$a;->wU:Z

    return-object v0

    :catch_3f
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/analytics/ac$a;->wT:Lcom/google/android/gms/analytics/ac;

    invoke-static {v1}, Lcom/google/android/gms/analytics/ac;->c(Lcom/google/android/gms/analytics/ac;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/ac$a;->wT:Lcom/google/android/gms/analytics/ac;

    invoke-static {v2}, Lcom/google/android/gms/analytics/ac;->b(Lcom/google/android/gms/analytics/ac;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_35
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->N(Ljava/lang/String;)Z

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_18

    const-string/jumbo v1, "PRAGMA journal_mode=memory"

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2d

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_12
    :try_start_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_35

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_18
    const-string/jumbo v0, "hits2"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/ac$a;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {}, Lcom/google/android/gms/analytics/ac;->dp()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3a

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_2c
    return-void

    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2d
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_12

    :catchall_35
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3a
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_2c

    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_40
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/ac$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2c
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    return-void
.end method
