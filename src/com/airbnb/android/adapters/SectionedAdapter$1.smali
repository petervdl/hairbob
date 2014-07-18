.class Lcom/airbnb/android/adapters/SectionedAdapter$1;
.super Landroid/database/DataSetObserver;
.source "SectionedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/SectionedAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/SectionedAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/SectionedAdapter;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/airbnb/android/adapters/SectionedAdapter$1;->this$0:Lcom/airbnb/android/adapters/SectionedAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionedAdapter$1;->this$0:Lcom/airbnb/android/adapters/SectionedAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SectionedAdapter;->notifyDataSetChanged()V

    .line 34
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionedAdapter$1;->this$0:Lcom/airbnb/android/adapters/SectionedAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SectionedAdapter;->notifyDataSetInvalidated()V

    .line 39
    return-void
.end method
