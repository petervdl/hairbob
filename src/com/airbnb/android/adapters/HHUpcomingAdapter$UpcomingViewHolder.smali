.class Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;
.super Ljava/lang/Object;
.source "HHUpcomingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/HHUpcomingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpcomingViewHolder"
.end annotation


# instance fields
.field arriveTime:Landroid/widget/TextView;

.field details:Landroid/widget/TextView;

.field listingDescription:Landroid/widget/TextView;

.field profileImage:Lcom/airbnb/android/views/HaloImageView;

.field final synthetic this$0:Lcom/airbnb/android/adapters/HHUpcomingAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/HHUpcomingAdapter;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/airbnb/android/adapters/HHUpcomingAdapter$UpcomingViewHolder;->this$0:Lcom/airbnb/android/adapters/HHUpcomingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
