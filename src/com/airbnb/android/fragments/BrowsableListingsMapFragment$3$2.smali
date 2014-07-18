.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$2;
.super Ljava/lang/Object;
.source "BrowsableListingsMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->onMapInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;)V
    .registers 2

    .prologue
    .line 167
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$2;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$2;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # invokes: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->refreshMap()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$100(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    .line 171
    return-void
.end method
