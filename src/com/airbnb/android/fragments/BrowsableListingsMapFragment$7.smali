.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$7;
.super Ljava/lang/Object;
.source "BrowsableListingsMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->refreshMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V
    .registers 2

    .prologue
    .line 327
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$7;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$7;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mIgnoreCameraChange:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$502(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;Z)Z

    .line 332
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$7;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # invokes: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->refreshMap()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$100(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    .line 333
    return-void
.end method
