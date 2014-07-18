.class public Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationPageRecord"
.end annotation


# instance fields
.field public final isLoopingEnabled:Z

.field public final loggingParams:Lcom/airbnb/android/utils/Strap;

.field public final selectedLocation:Lcom/airbnb/android/models/TravelLocation;

.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

.field public final viewPagerPosition:I


# direct methods
.method public constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;ILcom/airbnb/android/models/TravelLocation;ZLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p2, "viewPagerPosition"    # I
    .param p3, "selectedLocation"    # Lcom/airbnb/android/models/TravelLocation;
    .param p4, "isLoopingEnabled"    # Z
    .param p5, "loggingParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->viewPagerPosition:I

    .line 482
    iput-object p3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->selectedLocation:Lcom/airbnb/android/models/TravelLocation;

    .line 483
    iput-boolean p4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->isLoopingEnabled:Z

    .line 484
    iput-object p5, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->loggingParams:Lcom/airbnb/android/utils/Strap;

    .line 485
    return-void
.end method
