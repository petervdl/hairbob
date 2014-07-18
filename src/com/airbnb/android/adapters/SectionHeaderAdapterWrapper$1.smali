.class Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "SectionHeaderAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;-><init>(Landroid/widget/BaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper$1;->this$0:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper$1;->this$0:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->notifyDataSetChanged()V

    .line 31
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper$1;->this$0:Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->notifyDataSetInvalidated()V

    .line 36
    return-void
.end method
