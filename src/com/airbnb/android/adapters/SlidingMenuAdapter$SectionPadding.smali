.class Lcom/airbnb/android/adapters/SlidingMenuAdapter$SectionPadding;
.super Ljava/lang/Object;
.source "SlidingMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/SlidingMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionPadding"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/SlidingMenuAdapter;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/adapters/SlidingMenuAdapter;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SectionPadding;->this$0:Lcom/airbnb/android/adapters/SlidingMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/adapters/SlidingMenuAdapter;Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/airbnb/android/adapters/SlidingMenuAdapter;
    .param p2, "x1"    # Lcom/airbnb/android/adapters/SlidingMenuAdapter$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SectionPadding;-><init>(Lcom/airbnb/android/adapters/SlidingMenuAdapter;)V

    return-void
.end method
