.class public final Lcom/airbnb/android/models/SearchInfo$SearchInfoContract;
.super Ljava/lang/Object;
.source "SearchInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/SearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchInfoContract"
.end annotation


# static fields
.field public static final COL_AMENITIES:Ljava/lang/String; = "amenities"

.field public static final COL_CHECKIN_DATE:Ljava/lang/String; = "checkin_date"

.field public static final COL_CHECKOUT_DATE:Ljava/lang/String; = "checkout_date"

.field public static final COL_CURRENCY:Ljava/lang/String; = "currency"

.field public static final COL_DB_VERSION:Ljava/lang/String; = "db_version"

.field public static final COL_ENTIRE_PLACE:Ljava/lang/String; = "entire_place"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_INSTANT_BOOK_ONLY:Ljava/lang/String; = "instant_book"

.field public static final COL_LAST_UPDATE:Ljava/lang/String; = "last_update"

.field public static final COL_MAX_PRICE:Ljava/lang/String; = "max_price"

.field public static final COL_MIN_PRICE:Ljava/lang/String; = "min_price"

.field public static final COL_NUM_BATHROOMS:Ljava/lang/String; = "num_bathrooms"

.field public static final COL_NUM_BEDROOMS:Ljava/lang/String; = "num_bedrooms"

.field public static final COL_NUM_BEDS:Ljava/lang/String; = "num_beds"

.field public static final COL_NUM_GUESTS:Ljava/lang/String; = "num_guests"

.field public static final COL_PRIVATE_ROOM:Ljava/lang/String; = "private_room"

.field public static final COL_QUERY:Ljava/lang/String; = "query"

.field public static final COL_SHARED_ROOM:Ljava/lang/String; = "shared_room"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE search_info(_id INTEGER PRIMARY KEY AUTOINCREMENT,query TEXT NOT NULL DEFAULT \'\',checkin_date LONG,checkout_date LONG,num_guests INTEGER,min_price INTEGER,max_price INTEGER,num_beds INTEGER,num_bedrooms INTEGER,num_bathrooms INTEGER,private_room INTEGER,shared_room INTEGER,entire_place INTEGER,amenities TEXT,instant_book INTEGER,currency TEXT,db_version INTEGER,last_update LONG)"

.field public static final FIELDS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "search_info"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 684
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "query"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "checkin_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "checkout_date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "num_guests"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "min_price"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "max_price"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "num_beds"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "num_bedrooms"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "num_bathrooms"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "private_room"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "shared_room"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "entire_place"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "amenities"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "instant_book"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "currency"

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/models/SearchInfo$SearchInfoContract;->FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
