.class public Lcom/airbnb/android/events/AirbnbBus;
.super Lcom/squareup/otto/Bus;
.source "AirbnbBus.java"


# static fields
.field public static final main:Lcom/airbnb/android/events/AirbnbBus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    new-instance v0, Lcom/airbnb/android/events/AirbnbBus;

    invoke-direct {v0}, Lcom/airbnb/android/events/AirbnbBus;-><init>()V

    sput-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/squareup/otto/Bus;-><init>()V

    return-void
.end method
