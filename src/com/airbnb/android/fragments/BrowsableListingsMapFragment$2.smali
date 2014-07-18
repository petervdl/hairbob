.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$2;
.super Ljava/lang/Object;
.source "BrowsableListingsMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->setUserVisibleHint(Z)V
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
    .line 127
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$2;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$2;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # invokes: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->refreshMap()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$100(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    .line 131
    return-void
.end method
