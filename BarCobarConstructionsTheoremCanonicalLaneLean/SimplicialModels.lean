import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarConstructions

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure SimplicialResolution (O : BarCobarObject) where
  simplices : Type
  faceMaps : simplices → simplices
  degeneracyMaps : simplices → simplices
  simplicialIdentities : Prop
  augmentationMap : simplices → O.chainComplex
  augmentationMapMorphism : morphismProperty (augmentationMap)

def simplicialResolutionClosed (R : SimplicialResolution O) : Prop :=
  R.simplicialIdentities ∧ R.augmentationMapMorphism

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse