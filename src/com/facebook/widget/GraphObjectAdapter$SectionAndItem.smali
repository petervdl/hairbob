.class public Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/GraphObjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionAndItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public graphObject:Lcom/facebook/model/GraphObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public sectionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/model/GraphObject;)V
    .registers 3
    .param p1, "sectionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    .local p2, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    .line 89
    return-void
.end method


# virtual methods
.method public getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;
    .registers 2

    .prologue
    .line 92
    .local p0, "this":Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 93
    sget-object v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    .line 97
    :goto_6
    return-object v0

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    if-nez v0, :cond_e

    .line 95
    sget-object v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->SECTION_HEADER:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    goto :goto_6

    .line 97
    :cond_e
    sget-object v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    goto :goto_6
.end method
