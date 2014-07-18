.class public Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "PlacesSearchSuggestionProvider.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field private static final ADDRESS_SUGGEST:I = 0x2

.field private static final API_KEY:Ljava/lang/String; = "AIzaSyDOfRrQ5Pa4_0SiY7S_g5YFIX24pWXKngA"

.field public static final AUTHORITY:Ljava/lang/String; = ".contentproviders.PlacesSearchSuggestionProvider"

.field public static final CITIES:Ljava/lang/String; = "cities"

.field private static final CITIES_SUGGEST:I = 0x1

.field public static final DISPLAY_CITY:Ljava/lang/String; = "city"

.field public static final DISPLAY_REGION:Ljava/lang/String; = "region"

.field private static final JSON_ARRAY_PREDICTIONS:Ljava/lang/String; = "predictions"

.field private static final JSON_ARRAY_TERMS:Ljava/lang/String; = "terms"

.field private static final JSON_STRING_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final JSON_STRING_VALUE:Ljava/lang/String; = "value"

.field private static final MIN_AUTOCOMPLETE_CHARS:I = 0x3

.field private static final OUT_JSON:Ljava/lang/String; = "/json"

.field private static final PLACES_API_BASE:Ljava/lang/String; = "https://maps.googleapis.com"

.field private static final SEARCH_BIAS_RADIUS:J = 0x30d40L

.field public static final SEARCH_NO_LOCATION:Ljava/lang/String; = "search_no_location"

.field private static final SEARCH_NO_LOCATION_SUGGEST:I = 0x3

.field private static final SEARCH_SUGGEST:I = 0x0

.field public static final SEARCH_SUGGEST_COLUMNS:[Ljava/lang/String;

.field public static final SEARCH_SUGGEST_COLUMNS_ADDRESS:[Ljava/lang/String;

.field public static final SEARCH_SUGGEST_COLUMNS_CITIES:[Ljava/lang/String;

.field public static final SEARCH_SUGGEST_MY_LOCATION_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_AUTOCOMPLETE:Ljava/lang/String; = "/maps/api/place/autocomplete"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mQuery:Ljava/lang/String;

.field private mRequestResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    const-class v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 57
    sget-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, ".contentproviders.PlacesSearchSuggestionProvider"

    const-string/jumbo v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, ".contentproviders.PlacesSearchSuggestionProvider"

    const-string/jumbo v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, ".contentproviders.PlacesSearchSuggestionProvider"

    const-string/jumbo v2, "search_no_location"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, ".contentproviders.PlacesSearchSuggestionProvider"

    const-string/jumbo v2, "search_no_location/*"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, ".contentproviders.PlacesSearchSuggestionProvider"

    const-string/jumbo v2, "cities"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, ".contentproviders.PlacesSearchSuggestionProvider"

    const-string/jumbo v2, "cities/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, ".contentproviders.PlacesSearchSuggestionProvider"

    const-string/jumbo v2, "address"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, ".contentproviders.PlacesSearchSuggestionProvider"

    const-string/jumbo v2, "address/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "suggest_intent_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_COLUMNS:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "suggest_intent_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "suggest_text_2"

    aput-object v1, v0, v6

    const-string/jumbo v1, "city"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "region"

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_COLUMNS_CITIES:[Ljava/lang/String;

    .line 82
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "suggest_intent_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "suggest_text_2"

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_COLUMNS_ADDRESS:[Ljava/lang/String;

    .line 89
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "suggest_icon_1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "suggest_text_1"

    aput-object v1, v0, v5

    const-string/jumbo v1, "suggest_intent_data"

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_MY_LOCATION_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mRequestResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 116
    sget-object v1, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 117
    .local v0, "match":I
    packed-switch v0, :pswitch_data_18

    .line 124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :pswitch_13
    const-string/jumbo v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v1

    .line 117
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 38
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v29, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v28

    .line 131
    .local v28, "uriMatch":I
    if-eqz v28, :cond_24

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_24

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_24

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_364

    .line 132
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v22

    .line 134
    .local v22, "query":Ljava/lang/String;
    if-nez v28, :cond_c2

    .line 135
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_43

    const-string/jumbo v29, "search_suggest_query"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c2

    .line 137
    :cond_43
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mQuery:Ljava/lang/String;

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string/jumbo v30, "android.hardware.location"

    invoke-virtual/range {v29 .. v30}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_5e

    .line 139
    const/4 v6, 0x0

    .line 280
    .end local v22    # "query":Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-object v6

    .line 142
    .restart local v22    # "query":Ljava/lang/String;
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v29

    const-string/jumbo v30, "location"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/location/LocationManager;

    .line 143
    .local v14, "locationManager":Landroid/location/LocationManager;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v20

    .line 144
    .local v20, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    if-nez v29, :cond_7b

    .line 145
    const/4 v6, 0x0

    goto :goto_5d

    .line 148
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0e013c

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 149
    .local v15, "myLocation":Ljava/lang/String;
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v29, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_MY_LOCATION_COLUMNS:[Ljava/lang/String;

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v6, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 150
    .local v6, "cursor":Landroid/database/MatrixCursor;
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string/jumbo v31, "0"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const v31, 0x7f020145

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    aput-object v15, v29, v30

    const/16 v30, 0x3

    const-string/jumbo v31, ""

    aput-object v31, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5d

    .line 155
    .end local v6    # "cursor":Landroid/database/MatrixCursor;
    .end local v14    # "locationManager":Landroid/location/LocationManager;
    .end local v15    # "myLocation":Ljava/lang/String;
    .end local v20    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c2
    const-string/jumbo v29, "\u0000"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 156
    .local v21, "queries":[Ljava/lang/String;
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mRequestResult:Ljava/lang/String;

    .line 159
    const/16 v29, 0x0

    aget-object v29, v21, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_1a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mQuery:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_105

    const/16 v29, 0x0

    aget-object v29, v21, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mQuery:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_1a9

    .line 160
    :cond_105
    new-instance v29, Lcom/airbnb/android/utils/Strap;

    invoke-direct/range {v29 .. v29}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v30, "sensor"

    const-string/jumbo v31, "false"

    invoke-virtual/range {v29 .. v31}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v29

    const-string/jumbo v30, "key"

    const-string/jumbo v31, "AIzaSyDOfRrQ5Pa4_0SiY7S_g5YFIX24pWXKngA"

    invoke-virtual/range {v29 .. v31}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v29

    const-string/jumbo v30, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v29

    const-string/jumbo v30, "input"

    const/16 v31, 0x0

    aget-object v31, v21, v31

    invoke-virtual/range {v29 .. v31}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v26

    .line 166
    .local v26, "strap":Lcom/airbnb/android/utils/Strap;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_164

    .line 167
    const-string/jumbo v29, "radius"

    const-wide/32 v30, 0x30d40

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v29

    const-string/jumbo v30, "location"

    const/16 v31, 0x1

    aget-object v31, v21, v31

    invoke-virtual/range {v29 .. v31}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v26

    .line 173
    :cond_164
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c2

    .line 174
    const-string/jumbo v29, "types"

    const-string/jumbo v30, "(cities)"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v26

    .line 179
    :cond_17c
    :goto_17c
    new-instance v25, Lcom/airbnb/android/requests/PlacesSearchRequest;

    const-string/jumbo v29, "https://maps.googleapis.com/maps/api/place/autocomplete/json"

    new-instance v30, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider$1;-><init>(Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/PlacesSearchRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 201
    .local v25, "request":Lcom/airbnb/android/requests/PlacesSearchRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 202
    :try_start_19c
    invoke-virtual/range {v25 .. v25}, Lcom/airbnb/android/requests/PlacesSearchRequest;->execute()V
    :try_end_19f
    .catchall {:try_start_19c .. :try_end_19f} :catchall_1dd

    .line 205
    :try_start_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->wait()V
    :try_end_1a8
    .catch Ljava/lang/InterruptedException; {:try_start_19f .. :try_end_1a8} :catch_367
    .catchall {:try_start_19f .. :try_end_1a8} :catchall_1dd

    .line 208
    :goto_1a8
    :try_start_1a8
    monitor-exit v30
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_1dd

    .line 211
    .end local v25    # "request":Lcom/airbnb/android/requests/PlacesSearchRequest;
    .end local v26    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_1a9
    const/16 v29, 0x0

    aget-object v29, v21, v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mQuery:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mRequestResult:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_1e0

    .line 214
    const/4 v6, 0x0

    goto/16 :goto_5d

    .line 175
    .restart local v26    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_1c2
    if-eqz v28, :cond_1cc

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17c

    .line 176
    :cond_1cc
    const-string/jumbo v29, "types"

    const-string/jumbo v30, "geocode"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v26

    goto :goto_17c

    .line 208
    .restart local v25    # "request":Lcom/airbnb/android/requests/PlacesSearchRequest;
    :catchall_1dd
    move-exception v29

    :try_start_1de
    monitor-exit v30
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1dd

    throw v29

    .line 218
    .end local v25    # "request":Lcom/airbnb/android/requests/PlacesSearchRequest;
    .end local v26    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_1e0
    :try_start_1e0
    new-instance v29, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->mRequestResult:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 219
    .local v13, "json":Lorg/json/JSONObject;
    const-string/jumbo v29, "predictions"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 221
    .local v19, "predictions":Lorg/json/JSONArray;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 222
    .local v16, "numResults":I
    const/4 v6, 0x0

    .line 224
    .restart local v6    # "cursor":Landroid/database/MatrixCursor;
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26c

    .line 225
    new-instance v6, Landroid/database/MatrixCursor;

    .end local v6    # "cursor":Landroid/database/MatrixCursor;
    sget-object v29, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_COLUMNS_CITIES:[Ljava/lang/String;

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-direct {v6, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 232
    .restart local v6    # "cursor":Landroid/database/MatrixCursor;
    :goto_20d
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_20e
    move/from16 v0, v16

    if-ge v9, v0, :cond_5d

    .line 233
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "id":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 235
    .local v11, "item":Lorg/json/JSONObject;
    const-string/jumbo v29, "description"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 237
    .local v18, "prediction":Ljava/lang/String;
    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2b6

    .line 238
    const-string/jumbo v29, "terms"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 240
    .local v27, "terms":Lorg/json/JSONArray;
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v17

    .line 241
    .local v17, "numTerms":I
    if-lez v17, :cond_2b2

    .line 242
    add-int/lit8 v29, v17, -0x1

    move/from16 v0, v29

    new-array v5, v0, [Ljava/lang/String;

    .line 244
    .local v5, "components":[Ljava/lang/String;
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "value"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "address":Ljava/lang/String;
    const/4 v12, 0x1

    .local v12, "j":I
    :goto_254
    move/from16 v0, v17

    if-ge v12, v0, :cond_28c

    .line 246
    add-int/lit8 v29, v12, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    const-string/jumbo v31, "value"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v5, v29

    .line 245
    add-int/lit8 v12, v12, 0x1

    goto :goto_254

    .line 226
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "components":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "item":Lorg/json/JSONObject;
    .end local v12    # "j":I
    .end local v17    # "numTerms":I
    .end local v18    # "prediction":Ljava/lang/String;
    .end local v27    # "terms":Lorg/json/JSONArray;
    :cond_26c
    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_280

    .line 227
    new-instance v6, Landroid/database/MatrixCursor;

    .end local v6    # "cursor":Landroid/database/MatrixCursor;
    sget-object v29, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_COLUMNS_ADDRESS:[Ljava/lang/String;

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-direct {v6, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .restart local v6    # "cursor":Landroid/database/MatrixCursor;
    goto :goto_20d

    .line 229
    :cond_280
    new-instance v6, Landroid/database/MatrixCursor;

    .end local v6    # "cursor":Landroid/database/MatrixCursor;
    sget-object v29, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_MY_LOCATION_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-direct {v6, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .restart local v6    # "cursor":Landroid/database/MatrixCursor;
    goto :goto_20d

    .line 248
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v5    # "components":[Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v11    # "item":Lorg/json/JSONObject;
    .restart local v12    # "j":I
    .restart local v17    # "numTerms":I
    .restart local v18    # "prediction":Ljava/lang/String;
    .restart local v27    # "terms":Lorg/json/JSONArray;
    :cond_28c
    const-string/jumbo v29, ", "

    move-object/from16 v0, v29

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, "geocodeable":Ljava/lang/String;
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v10, v29, v30

    const/16 v30, 0x1

    aput-object v4, v29, v30

    const/16 v30, 0x2

    aput-object v18, v29, v30

    const/16 v30, 0x3

    aput-object v8, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 232
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "components":[Ljava/lang/String;
    .end local v8    # "geocodeable":Ljava/lang/String;
    .end local v12    # "j":I
    .end local v17    # "numTerms":I
    .end local v27    # "terms":Lorg/json/JSONArray;
    :cond_2b2
    :goto_2b2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_20e

    .line 251
    :cond_2b6
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_33f

    .line 252
    const-string/jumbo v29, "terms"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 254
    .restart local v27    # "terms":Lorg/json/JSONArray;
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v17

    .line 255
    .restart local v17    # "numTerms":I
    if-lez v17, :cond_2b2

    .line 256
    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    .line 257
    .restart local v5    # "components":[Ljava/lang/String;
    add-int/lit8 v29, v17, -0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 258
    .local v24, "regionComponents":[Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_2da
    move/from16 v0, v17

    if-ge v12, v0, :cond_2fc

    .line 259
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v29

    const-string/jumbo v30, "value"

    invoke-virtual/range {v29 .. v30}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v5, v12

    .line 260
    const/16 v29, 0x1

    move/from16 v0, v29

    if-lt v12, v0, :cond_2f9

    .line 261
    add-int/lit8 v29, v12, -0x1

    aget-object v30, v5, v12

    aput-object v30, v24, v29

    .line 258
    :cond_2f9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2da

    .line 264
    :cond_2fc
    const-string/jumbo v29, ", "

    move-object/from16 v0, v29

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 265
    .restart local v8    # "geocodeable":Ljava/lang/String;
    const-string/jumbo v29, ", "

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 267
    .local v23, "region":Ljava/lang/String;
    const/16 v29, 0x6

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v10, v29, v30

    const/16 v30, 0x1

    aput-object v18, v29, v30

    const/16 v30, 0x2

    aput-object v18, v29, v30

    const/16 v30, 0x3

    aput-object v8, v29, v30

    const/16 v30, 0x4

    const/16 v31, 0x0

    aget-object v31, v5, v31

    aput-object v31, v29, v30

    const/16 v30, 0x5

    aput-object v23, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2b2

    .line 275
    .end local v5    # "components":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/MatrixCursor;
    .end local v8    # "geocodeable":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "item":Lorg/json/JSONObject;
    .end local v12    # "j":I
    .end local v13    # "json":Lorg/json/JSONObject;
    .end local v16    # "numResults":I
    .end local v17    # "numTerms":I
    .end local v18    # "prediction":Ljava/lang/String;
    .end local v19    # "predictions":Lorg/json/JSONArray;
    .end local v23    # "region":Ljava/lang/String;
    .end local v24    # "regionComponents":[Ljava/lang/String;
    .end local v27    # "terms":Lorg/json/JSONArray;
    :catch_33b
    move-exception v7

    .line 276
    .local v7, "e":Lorg/json/JSONException;
    const/4 v6, 0x0

    goto/16 :goto_5d

    .line 270
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v6    # "cursor":Landroid/database/MatrixCursor;
    .restart local v9    # "i":I
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v11    # "item":Lorg/json/JSONObject;
    .restart local v13    # "json":Lorg/json/JSONObject;
    .restart local v16    # "numResults":I
    .restart local v18    # "prediction":Ljava/lang/String;
    .restart local v19    # "predictions":Lorg/json/JSONArray;
    :cond_33f
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v10, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    aput-object v18, v29, v30

    const/16 v30, 0x3

    aput-object v18, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_362
    .catch Lorg/json/JSONException; {:try_start_1e0 .. :try_end_362} :catch_33b

    goto/16 :goto_2b2

    .line 280
    .end local v6    # "cursor":Landroid/database/MatrixCursor;
    .end local v9    # "i":I
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "item":Lorg/json/JSONObject;
    .end local v13    # "json":Lorg/json/JSONObject;
    .end local v16    # "numResults":I
    .end local v18    # "prediction":Ljava/lang/String;
    .end local v19    # "predictions":Lorg/json/JSONArray;
    .end local v21    # "queries":[Ljava/lang/String;
    .end local v22    # "query":Ljava/lang/String;
    :cond_364
    const/4 v6, 0x0

    goto/16 :goto_5d

    .line 206
    .restart local v21    # "queries":[Ljava/lang/String;
    .restart local v22    # "query":Ljava/lang/String;
    .restart local v25    # "request":Lcom/airbnb/android/requests/PlacesSearchRequest;
    .restart local v26    # "strap":Lcom/airbnb/android/utils/Strap;
    :catch_367
    move-exception v29

    goto/16 :goto_1a8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
